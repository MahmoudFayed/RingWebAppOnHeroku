/* Copyright (c) 2013-2021 Mahmoud Fayed <msfclipper@yahoo.com> */
#include "ring.h"
/* Duplication & Range */

void ring_vm_dup ( VM *pVM )
{
	String *pString  ;
	double nNum1  ;
	void *pPointer  ;
	int nType  ;
	if ( RING_VM_STACK_ISSTRING ) {
		pString = ring_string_new_gc(pVM->pRingState,RING_VM_STACK_READC);
		RING_VM_STACK_PUSHCVALUE(ring_string_get(pString));
		ring_string_delete_gc(pVM->pRingState,pString);
	}
	else if ( RING_VM_STACK_ISNUMBER ) {
		nNum1 = RING_VM_STACK_READN ;
		RING_VM_STACK_PUSHNVALUE(nNum1);
	}
	else if ( RING_VM_STACK_ISPOINTER ) {
		pPointer = RING_VM_STACK_READP ;
		nType = RING_VM_STACK_OBJTYPE ;
		RING_VM_STACK_PUSHPVALUE(pPointer);
		RING_VM_STACK_OBJTYPE = nType ;
	}
}

void ring_vm_range ( VM *pVM )
{
	double nNum1,nNum2  ;
	int x  ;
	char cStr[2]  ;
	String *pString1,*pString2  ;
	List *pVar  ;
	if ( RING_VM_STACK_ISNUMBER ) {
		nNum1 = RING_VM_STACK_READN ;
		RING_VM_STACK_POP ;
		if ( RING_VM_STACK_ISNUMBER ) {
			nNum2 = RING_VM_STACK_READN ;
			RING_VM_STACK_POP ;
			/* Create List Variable */
			pVar = ring_vm_range_newlist(pVM);
			/* Create List */
			if ( nNum2 <= nNum1 ) {
				for ( x = nNum2 ; x <= nNum1 ; x++ ) {
					ring_list_adddouble_gc(pVM->pRingState,pVar,x);
				}
			}
			else {
				for ( x = nNum2 ; x >= nNum1 ; x-- ) {
					ring_list_adddouble_gc(pVM->pRingState,pVar,x);
				}
			}
		}
	}
	else if ( RING_VM_STACK_ISSTRING ) {
		pString1 = ring_string_new_gc(pVM->pRingState,RING_VM_STACK_READC);
		RING_VM_STACK_POP ;
		if ( ring_string_size(pString1) == 1 ) {
			if ( RING_VM_STACK_ISSTRING ) {
				pString2 = ring_string_new_gc(pVM->pRingState,RING_VM_STACK_READC);
				RING_VM_STACK_POP ;
				if ( ring_string_size(pString2)  == 1 ) {
					cStr[1] = '\0' ;
					nNum1 = pString1->cStr[0] ;
					nNum2 = pString2->cStr[0] ;
					/* Create List Variable */
					pVar = ring_vm_range_newlist(pVM);
					/* Create List */
					if ( nNum2 <= nNum1 ) {
						for ( x = nNum2 ; x <= nNum1 ; x++ ) {
							cStr[0] = (char) x ;
							ring_list_addstring_gc(pVM->pRingState,pVar,cStr);
						}
					}
					else {
						for ( x = nNum2 ; x >= nNum1 ; x-- ) {
							cStr[0] = (char) x ;
							ring_list_addstring_gc(pVM->pRingState,pVar,cStr);
						}
					}
				}
				ring_string_delete_gc(pVM->pRingState,pString2);
			}
		}
		ring_string_delete_gc(pVM->pRingState,pString1);
	}
}

List * ring_vm_range_newlist ( VM *pVM )
{
	char cVarName[50]  ;
	List *pVar  ;
	/* Create List Variable */
	sprintf( cVarName , "n_sys_var_%d" , pVM->nPC ) ;
	if ( ring_vm_findvar(pVM, cVarName  ) == 0 ) {
		ring_vm_newvar(pVM,cVarName);
	}
	pVar = (List *) RING_VM_STACK_READP ;
	ring_list_setint_gc(pVM->pRingState,pVar,RING_VAR_TYPE,RING_VM_LIST);
	ring_list_setlist_gc(pVM->pRingState,pVar,RING_VAR_VALUE);
	ring_list_deleteallitems_gc(pVM->pRingState,ring_list_getlist(pVar,RING_VAR_VALUE));
	pVar = ring_list_getlist(pVar,RING_VAR_VALUE);
	return pVar ;
}
