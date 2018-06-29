/* Copyright (c) 2013-2016 Mahmoud Fayed <msfclipper@yahoo.com> */
#ifndef ring_string_h
#define ring_string_h
/* Data */
typedef struct String {
	char *cStr  ;
	int nSize  ;
	/* Note : nSize is (Allocation Size - 1) */
} String ;
/* Functions */

RING_API String * ring_string_new_gc ( void *pState,const char *str ) ;

RING_API String * ring_string_new2_gc ( void *pState,const char *str,int nStrSize ) ;

RING_API String * ring_string_delete_gc ( void *pState,String *pString ) ;

RING_API int ring_string_size ( String *pString ) ;

RING_API void ring_string_set_gc ( void *pState,String *pString,const char *str ) ;

RING_API void ring_string_set2_gc ( void *pState,String *pString,const char *str,int nStrSize ) ;

RING_API void ring_string_add_gc ( void *pState,String *pString,const char *str ) ;

RING_API void ring_string_add2_gc ( void *pState,String *pString,const char *str,int nStrSize ) ;

RING_API void ring_string_print ( String *pString ) ;

RING_API void ring_string_setfromint_gc ( void *pState,String *pString,int x ) ;

RING_API char * ring_string_lower ( char *cStr ) ;

RING_API char * ring_string_upper ( char *cStr ) ;

RING_API char * ring_string_lower2 ( char *cStr,int nStrSize ) ;

RING_API char * ring_string_upper2 ( char *cStr,int nStrSize ) ;

RING_API char * ring_string_find_gc ( void *pState,char *cStr1,char *cStr2 ) ;

RING_API char * ring_string_find2_gc ( void *pState,char *cStr1,int nStrSize1,char *cStr2,int nStrSize2 ) ;

RING_API char * ring_string_find3_gc ( void *pState,char *cStr1,int nStrSize1,char *cStr2,int nStrSize2 ) ;

void ring_string_test ( void ) ;
/* Macro */
#define ring_string_tolower(x) ring_string_lower(x->cStr)
#define ring_string_toupper(x) ring_string_upper(x->cStr)
#define ring_string_get(x) (x->cStr)
/* Functions without state pointer */

RING_API String * ring_string_new2 ( const char *str,int nStrSize ) ;

RING_API String * ring_string_new ( const char *str ) ;

RING_API void ring_string_add ( String *pString,const char *str ) ;

RING_API void ring_string_add2 ( String *pString,const char *str,int nStrSize ) ;

RING_API void ring_string_set ( String *pString,const char *str ) ;

RING_API void ring_string_set2 ( String *pString,const char *str,int nStrSize ) ;

RING_API char * ring_string_find ( char *cStr1,char *cStr2 ) ;

RING_API char * ring_string_find2 ( char *cStr1,int nStrSize1,char *cStr2,int nStrSize2 ) ;

RING_API char * ring_string_find3 ( char *cStr1,int nStrSize1,char *cStr2,int nStrSize2 ) ;

RING_API String * ring_string_delete ( String *pString ) ;

RING_API void ring_string_setfromint ( String *pString,int x ) ;
#endif
