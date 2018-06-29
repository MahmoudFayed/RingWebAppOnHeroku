/* Copyright (c) 2013-2016 Mahmoud Fayed <msfclipper@yahoo.com> */
#ifndef ring_hashtable_h
#define ring_hashtable_h
/* Data */
typedef struct HashItem {
	char  *cKey  ;
	char nItemType  ;
	union HashValue {
		int nIndex  ;
		void *pValue  ;
	} HashValue ;
	struct HashItem *pNext  ;
} HashItem ;
typedef struct HashTable {
	HashItem **pArray  ;
	int nItems  ;
	int nLinkedLists  ;
	int nRebuildSize  ;
} HashTable ;
/* Functions */

HashTable * ring_hashtable_new_gc ( void *pState ) ;

unsigned int ring_hashtable_hashkey ( HashTable *pHashTable,const char *cKey ) ;

HashItem * ring_hashtable_newitem_gc ( void *pState,HashTable *pHashTable,const char *cKey ) ;

void ring_hashtable_newnumber_gc ( void *pState,HashTable *pHashTable,const char *cKey,int x ) ;

void ring_hashtable_newpointer_gc ( void *pState,HashTable *pHashTable,const char *cKey,void *x ) ;

HashItem * ring_hashtable_finditem ( HashTable *pHashTable,const char *cKey ) ;

int ring_hashtable_findnumber ( HashTable *pHashTable,const char *cKey ) ;

void * ring_hashtable_findpointer ( HashTable *pHashTable,const char *cKey ) ;

void ring_hashtable_deleteitem_gc ( void *pState,HashTable *pHashTable,const char *cKey ) ;

HashTable * ring_hashtable_delete_gc ( void *pState,HashTable *pHashTable ) ;

void ring_hashtable_print ( HashTable *pHashTable ) ;

void ring_hashtable_test ( void ) ;

void ring_hashtable_rebuild_gc ( void *pState,HashTable *pHashTable ) ;
/* Macro */
#define RING_HASHITEMTYPE_NOTYPE 0
#define RING_HASHITEMTYPE_NUMBER 1
#define RING_HASHITEMTYPE_POINTER 2
/* Functions without the State pointer */

HashTable * ring_hashtable_new ( void ) ;

HashItem * ring_hashtable_newitem ( HashTable *pHashTable,const char *cKey ) ;

void ring_hashtable_deleteitem ( HashTable *pHashTable,const char *cKey ) ;

HashTable * ring_hashtable_delete ( HashTable *pHashTable ) ;

void ring_hashtable_rebuild ( HashTable *pHashTable ) ;

void ring_hashtable_newnumber ( HashTable *pHashTable,const char *cKey,int x ) ;

void ring_hashtable_newpointer ( HashTable *pHashTable,const char *cKey,void *x ) ;
#endif
