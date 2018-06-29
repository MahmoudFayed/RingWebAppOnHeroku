/* Copyright (c) 2013-2016 Mahmoud Fayed <msfclipper@yahoo.com> */
#ifndef ring_vmsqlite_h
#define ring_vmsqlite_h
/* Functions */

RING_API void ringlib_init ( RingState *pRingState ) ;

void ring_vm_sqlite_init ( void *pPointer ) ;

void ring_vm_sqlite_close ( void *pPointer ) ;

void ring_vm_sqlite_open ( void *pPointer ) ;

void ring_vm_sqlite_errmsg ( void *pPointer ) ;

int ring_vm_sqlite_callback ( void *data, int argc, char **argv, char **ColName ) ;

void ring_vm_sqlite_execute ( void *pPointer ) ;
/* Constants */
#define RING_VM_POINTER_SQLITE "sqlite"
#endif
