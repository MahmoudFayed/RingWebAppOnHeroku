/* Copyright (c) 2013-2016 Mahmoud Fayed <msfclipper@yahoo.com> */
#ifndef ring_vmmath_h
#define ring_vmmath_h
/* Functions */

void ring_vm_math_loadfunctions ( RingState *pRingState ) ;

void ring_vm_math_sin ( void *pPointer ) ;

void ring_vm_math_cos ( void *pPointer ) ;

void ring_vm_math_tan ( void *pPointer ) ;

void ring_vm_math_asin ( void *pPointer ) ;

void ring_vm_math_acos ( void *pPointer ) ;

void ring_vm_math_atan ( void *pPointer ) ;

void ring_vm_math_atan2 ( void *pPointer ) ;

void ring_vm_math_sinh ( void *pPointer ) ;

void ring_vm_math_cosh ( void *pPointer ) ;

void ring_vm_math_tanh ( void *pPointer ) ;

void ring_vm_math_exp ( void *pPointer ) ;

void ring_vm_math_log ( void *pPointer ) ;

void ring_vm_math_log10 ( void *pPointer ) ;

void ring_vm_math_ceil ( void *pPointer ) ;

void ring_vm_math_floor ( void *pPointer ) ;

void ring_vm_math_fabs ( void *pPointer ) ;

void ring_vm_math_pow ( void *pPointer ) ;

void ring_vm_math_sqrt ( void *pPointer ) ;

void ring_vm_math_unsigned ( void *pPointer ) ;

void ring_vm_math_decimals ( void *pPointer ) ;

void ring_vm_math_murmur3hash ( void *pPointer ) ;
#endif
