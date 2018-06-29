/* Copyright (c) 2013-2016 Mahmoud Fayed <msfclipper@yahoo.com> */
#include "ring.h"
/* Functions */

HashTable * ring_hashtable_new_gc ( void *pState )
{
	HashTable *pHashTable  ;
	pHashTable = (HashTable *) ring_state_malloc(pState,sizeof(HashTable));
	if ( pHashTable == NULL ) {
		printf( RING_OOM ) ;
		exit(0);
	}
	pHashTable->nItems = 0 ;
	pHashTable->nLinkedLists = 10 ;
	pHashTable->nRebuildSize = 7 ;
	pHashTable->pArray = (HashItem **) ring_state_calloc(pState,pHashTable->nLinkedLists,sizeof(HashItem *));
	if ( pHashTable->pArray == NULL ) {
		printf( RING_OOM ) ;
		exit(0);
	}
	return pHashTable ;
}

unsigned int ring_hashtable_hashkey ( HashTable *pHashTable,const char *cKey )
{
	unsigned int nIndex  ;
	nIndex = ring_murmur3_32(cKey,strlen(cKey),0);
	nIndex = nIndex % pHashTable->nLinkedLists ;
	return nIndex ;
}

HashItem * ring_hashtable_newitem_gc ( void *pState,HashTable *pHashTable,const char *cKey )
{
	unsigned int nIndex  ;
	HashItem *pItem  ;
	nIndex = ring_hashtable_hashkey(pHashTable,cKey);
	if ( pHashTable->pArray[nIndex]   == NULL ) {
		pHashTable->pArray[nIndex] = (HashItem *) ring_state_malloc(pState,sizeof(HashItem));
		pItem = pHashTable->pArray[nIndex] ;
	}
	else {
		pItem = pHashTable->pArray[nIndex] ;
		/* Find Position of the HashItem */
		while ( pItem->pNext != NULL ) {
			pItem = pItem->pNext ;
		}
		pItem->pNext = (HashItem *) ring_state_malloc(pState,sizeof(HashItem));
		pItem = pItem->pNext ;
	}
	if ( pItem == NULL ) {
		printf( RING_OOM ) ;
		exit(0);
	}
	/* Store Copy from The Key */
	pItem->cKey = strdup(cKey) ;
	/* Item type will be determined from the caller */
	pItem->nItemType = RING_HASHITEMTYPE_NOTYPE ;
	pItem->pNext = NULL ;
	/* Increase Items Count */
	pHashTable->nItems++ ;
	return pItem ;
}

void ring_hashtable_newnumber_gc ( void *pState,HashTable *pHashTable,const char *cKey,int x )
{
	HashItem *pItem  ;
	pItem = ring_hashtable_newitem_gc(pState,pHashTable,cKey);
	pItem->nItemType = RING_HASHITEMTYPE_NUMBER ;
	pItem->HashValue.nIndex = x ;
	/* Check Rebuilding the HashTable */
	ring_hashtable_rebuild_gc(pState,pHashTable);
}

void ring_hashtable_newpointer_gc ( void *pState,HashTable *pHashTable,const char *cKey,void *x )
{
	HashItem *pItem  ;
	pItem = ring_hashtable_newitem_gc(pState,pHashTable,cKey);
	pItem->nItemType = RING_HASHITEMTYPE_POINTER ;
	pItem->HashValue.pValue = x ;
	/* Check Rebuilding the HashTable */
	ring_hashtable_rebuild_gc(pState,pHashTable);
}

HashItem * ring_hashtable_finditem ( HashTable *pHashTable,const char *cKey )
{
	int nIndex  ;
	HashItem *pItem  ;
	nIndex = ring_hashtable_hashkey(pHashTable,cKey);
	pItem = pHashTable->pArray[nIndex] ;
	while ( pItem != NULL ) {
		/* Check Key */
		if ( strcmp(pItem->cKey,cKey) == 0 ) {
			return pItem ;
		}
		pItem = pItem->pNext ;
	}
	return NULL ;
}

int ring_hashtable_findnumber ( HashTable *pHashTable,const char *cKey )
{
	HashItem *pItem  ;
	pItem = ring_hashtable_finditem(pHashTable,cKey);
	if ( pItem != NULL ) {
		return pItem->HashValue.nIndex ;
	}
	return 0 ;
}

void * ring_hashtable_findpointer ( HashTable *pHashTable,const char *cKey )
{
	HashItem *pItem  ;
	pItem = ring_hashtable_finditem(pHashTable,cKey);
	if ( pItem != NULL ) {
		return pItem->HashValue.pValue ;
	}
	return NULL ;
}

void ring_hashtable_deleteitem_gc ( void *pState,HashTable *pHashTable,const char *cKey )
{
	int nIndex  ;
	HashItem *pItem, *pPrevItem  ;
	nIndex = ring_hashtable_hashkey(pHashTable,cKey);
	pItem = pHashTable->pArray[nIndex] ;
	pPrevItem = NULL ;
	while ( pItem != NULL ) {
		/* Check Key */
		if ( strcmp(pItem->cKey,cKey) == 0 ) {
			if ( pPrevItem == NULL ) {
				pHashTable->pArray[nIndex] = pItem->pNext ;
			}
			else {
				pPrevItem->pNext = pItem->pNext ;
			}
			ring_state_free(pState,pItem->cKey);
			ring_state_free(pState,pItem);
			return ;
		}
		pPrevItem = pItem ;
		pItem = pItem->pNext ;
	}
}

HashTable * ring_hashtable_delete_gc ( void *pState,HashTable *pHashTable )
{
	int x  ;
	HashItem *pItem,*pItem2  ;
	if ( pHashTable == NULL ) {
		return NULL ;
	}
	for ( x = 0 ; x < pHashTable->nLinkedLists ; x++ ) {
		pItem = pHashTable->pArray[x] ;
		while ( pItem != NULL ) {
			pItem2 = pItem->pNext ;
			ring_state_free(pState,pItem->cKey);
			ring_state_free(pState,pItem);
			pItem = pItem2 ;
		}
	}
	ring_state_free(pState,pHashTable->pArray);
	ring_state_free(pState,pHashTable);
	return NULL ;
}

void ring_hashtable_rebuild_gc ( void *pState,HashTable *pHashTable )
{
	HashItem **pArray  ;
	int nLinkedLists,x  ;
	HashItem *pItem,*pItem2  ;
	if ( pHashTable->nItems != pHashTable->nRebuildSize ) {
		return ;
	}
	pArray = pHashTable->pArray ;
	nLinkedLists = pHashTable->nLinkedLists ;
	pHashTable->nRebuildSize *= 10 ;
	pHashTable->nLinkedLists *= 10 ;
	pHashTable->pArray = (HashItem **) ring_state_calloc(pState,pHashTable->nLinkedLists,sizeof(HashItem *));
	if ( pHashTable->pArray == NULL ) {
		printf( RING_OOM ) ;
		exit(0);
	}
	for ( x = 0 ; x < nLinkedLists ; x++ ) {
		pItem = pArray[x] ;
		while ( pItem != NULL ) {
			/* Rehash the item */
			if ( pItem->nItemType == RING_HASHITEMTYPE_NUMBER ) {
				ring_hashtable_newnumber(pHashTable,pItem->cKey,pItem->HashValue.nIndex);
			}
			else if ( pItem->nItemType == RING_HASHITEMTYPE_POINTER ) {
				ring_hashtable_newpointer(pHashTable,pItem->cKey,pItem->HashValue.pValue);
			}
			pItem2 = pItem->pNext ;
			ring_state_free(pState,pItem->cKey);
			ring_state_free(pState,pItem);
			pItem = pItem2 ;
		}
	}
	ring_state_free(pState,pArray);
}

void ring_hashtable_print ( HashTable *pHashTable )
{
	int x  ;
	HashItem *pItem  ;
	for ( x = 0 ; x < pHashTable->nLinkedLists ; x++ ) {
		pItem = pHashTable->pArray[x] ;
		while ( pItem != NULL ) {
			/* Print Item Data */
			printf( "\n LinkedList (%d) : Key (%s) \n",x,pItem->cKey ) ;
			pItem = pItem->pNext ;
		}
	}
}

void ring_hashtable_test ( void )
{
	HashTable *pHashTable  ;
	char cStr[20]  ;
	int x  ;
	puts("\nRing - HashTable Test");
	pHashTable = ring_hashtable_new();
	puts("\nCreate HashTable Items ");
	/* Add Items */
	ring_hashtable_newnumber(pHashTable,"one",1);
	ring_hashtable_newnumber(pHashTable,"two",2);
	ring_hashtable_newnumber(pHashTable,"three",3);
	ring_hashtable_newnumber(pHashTable,"four",4);
	ring_hashtable_newnumber(pHashTable,"five",5);
	ring_hashtable_newnumber(pHashTable,"six",6);
	ring_hashtable_newnumber(pHashTable,"seven",7);
	ring_hashtable_newnumber(pHashTable,"eight",8);
	ring_hashtable_newnumber(pHashTable,"nine",9);
	ring_hashtable_newnumber(pHashTable,"ten",10);
	ring_hashtable_newpointer(pHashTable,"mypointer",cStr);
	for ( x = 1 ; x <= 100 ; x++ ) {
		sprintf( cStr , "test%d" , x ) ;
		ring_hashtable_newnumber(pHashTable,cStr,x);
	}
	puts("\nPrint HashTable Items ");
	ring_hashtable_print(pHashTable);
	puts("\nFind Items ");
	printf( "\n Item : one - nIndex : %d",ring_hashtable_findnumber(pHashTable,"one") ) ;
	printf( "\n Item : five - nIndex : %d",ring_hashtable_findnumber(pHashTable,"five") ) ;
	printf( "\n Item : two - nIndex : %d",ring_hashtable_findnumber(pHashTable,"two") ) ;
	printf( "\n Item : four - nIndex : %d",ring_hashtable_findnumber(pHashTable,"four") ) ;
	printf( "\n Item : three - nIndex : %d",ring_hashtable_findnumber(pHashTable,"three") ) ;
	ring_hashtable_deleteitem(pHashTable,"three");
	printf( "\n Item : three After Delete - nIndex : %d",ring_hashtable_findnumber(pHashTable,"three") ) ;
	printf( "\n Item : mypointer - pointer : %s ",(char *) ring_hashtable_findpointer(pHashTable,"mypointer") ) ;
	puts("\nDelete HashTable ");
	ring_hashtable_delete(pHashTable);
	puts("\nEnd of HashTable Test ");
	exit(0);
}
/* Functions without the State pointer */

HashTable * ring_hashtable_new ( void )
{
	return ring_hashtable_new_gc(NULL) ;
}

HashItem * ring_hashtable_newitem ( HashTable *pHashTable,const char *cKey )
{
	return ring_hashtable_newitem_gc(NULL,pHashTable,cKey) ;
}

void ring_hashtable_deleteitem ( HashTable *pHashTable,const char *cKey )
{
	ring_hashtable_deleteitem_gc(NULL,pHashTable,cKey);
}

HashTable * ring_hashtable_delete ( HashTable *pHashTable )
{
	return ring_hashtable_delete_gc(NULL,pHashTable) ;
}

void ring_hashtable_rebuild ( HashTable *pHashTable )
{
	ring_hashtable_rebuild_gc(NULL,pHashTable);
}

void ring_hashtable_newnumber ( HashTable *pHashTable,const char *cKey,int x )
{
	ring_hashtable_newnumber_gc(NULL,pHashTable,cKey,x);
}

void ring_hashtable_newpointer ( HashTable *pHashTable,const char *cKey,void *x )
{
	ring_hashtable_newpointer_gc(NULL,pHashTable,cKey,x);
}
