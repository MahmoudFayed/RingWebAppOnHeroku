/* Copyright (c) 2013-2021 Mahmoud Fayed <msfclipper@yahoo.com> */
#include "ring.h"
/* Jump Functions */

void ring_vm_jump ( VM *pVM )
{
	RING_VM_JUMP ;
}

void ring_vm_jumpzero ( VM *pVM )
{
	if ( RING_VM_STACK_ISNUMBER ) {
		if ( RING_VM_STACK_READN  == 0 ) {
			ring_vm_jump(pVM);
		}
	}
	RING_VM_STACK_POP ;
}

void ring_vm_jumpfor ( VM *pVM )
{
	double nNum1,nNum2,nNum3  ;
	/* Check Data */
	if ( RING_VM_STACK_ISNUMBER ) {
		nNum1 = RING_VM_STACK_READN ;
		RING_VM_STACK_POP ;
	}
	else if ( RING_VM_STACK_ISSTRING ) {
		nNum1 = ring_vm_stringtonum(pVM,RING_VM_STACK_READC);
		RING_VM_STACK_POP ;
	}
	else {
		ring_vm_error(pVM,RING_VM_ERROR_FORLOOPDATATYPE);
		return ;
	}
	nNum2 = ring_list_getdouble(pVM->aForStep,ring_list_getsize(pVM->aForStep));
	/* Check Data */
	if ( RING_VM_STACK_ISNUMBER ) {
		nNum3 = RING_VM_STACK_READN ;
		RING_VM_STACK_POP ;
	}
	else if ( RING_VM_STACK_ISSTRING ) {
		nNum3 = ring_vm_stringtonum(pVM,RING_VM_STACK_READC);
		RING_VM_STACK_POP ;
	}
	else {
		ring_vm_error(pVM,RING_VM_ERROR_FORLOOPDATATYPE);
		return ;
	}
	/*
	**  nNum2 = Step value that can be positive or negative 
	**  nNum1 = Items Count , nNum3 = Index 
	*/
	if ( nNum2 < 0 ) {
		if ( ! ( nNum3 >= nNum1 ) ) {
			ring_vm_jump(pVM);
		}
	}
	else {
		if ( ! ( nNum3 <= nNum1 ) ) {
			ring_vm_jump(pVM);
		}
	}
}

void ring_vm_jumpone ( VM *pVM )
{
	if ( RING_VM_STACK_ISNUMBER ) {
		if ( RING_VM_STACK_READN  != 0 ) {
			ring_vm_jump(pVM);
		}
	}
	RING_VM_STACK_POP ;
}

void ring_vm_jumpone2 ( VM *pVM )
{
	/* Add 1, required for jump in many 'OR' in conditions */
	if ( RING_VM_STACK_ISNUMBER ) {
		if ( RING_VM_STACK_READN  != 0 ) {
			ring_vm_jump(pVM);
			return ;
		}
	}
	RING_VM_STACK_POP ;
	RING_VM_STACK_PUSHNVALUE(0);
}

void ring_vm_jumpzero2 ( VM *pVM )
{
	/* Add 1, required for jump in many 'AND' in conditions */
	if ( RING_VM_STACK_ISNUMBER ) {
		if ( RING_VM_STACK_READN  == 0 ) {
			ring_vm_jump(pVM);
			return ;
		}
	}
	RING_VM_STACK_POP ;
	RING_VM_STACK_PUSHNVALUE(1);
}
