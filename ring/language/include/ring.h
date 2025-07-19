/* Copyright (c) 2013-2025 Mahmoud Fayed <msfclipper@yahoo.com> */

#ifndef ring_h
	#define ring_h
	/* Include Custom Configuration File */
	#include "rconfig.h"
	/* Include C Headers */
	#include <stdlib.h>
	#include <stdio.h>
	#include <time.h>
	#include <assert.h>
	#include <string.h>
	#include <ctype.h>
	#include <math.h>
	#include <signal.h>
	#include <errno.h>
	#include <limits.h>
	#if defined(MSDOS) || defined(__MSDOS__) || defined(_MSDOS) || defined(__DOS__)
		#define RING_MSDOS 1
		#define RING_LIMITEDENV 1
		#if __BORLANDC__
			#include <dir.h>
			#include <alloc.h>
		#endif
	#else
		#define RING_MSDOS 0
	#endif
	#if __XC__
		/* Support compiling using a Microchip C compiler for 32-bit PIC Microcontrollers */
		#define RING_MICROCONTROLLER 1
	#endif
	#ifdef __ANDROID__
		#define RING_SIMPLEHASHFUNC 1
	#endif
	#ifdef __FreeBSD__
		#include <sys/sysctl.h>
	#endif
	#ifdef _WIN32
		#include <io.h>
		#include <fcntl.h>
		/* Required to get binary data from stdin (to be able to upload and read using cgi) */
		#if __BORLANDC__
			#define RING_SETBINARY setmode(fileno(stdin), O_BINARY)
		#else
			#define RING_SETBINARY _setmode(_fileno(stdin), _O_BINARY)
		#endif
		/*
		**  Support Windows DLL 
		**  Support Windows XP 
		**  To avoid error message : procedure entry point InitializeConditionVariable could not be located in 
		*/
		#ifdef _WIN32_WINNT
			#undef _WIN32_WINNT
		#endif
		#define _WIN32_WINNT 0x502
		#define RING_USEDLL 1
		#define RING_BUILDLIB 1
	#else
		#define RING_SETBINARY 0
		#if RING_MSDOS
		#else
			/* Required for types like uintptr_t */
			#include <stdint.h>
		#endif
		/* Linux (so files) */
		#define RING_USEDLL 0
		#define RING_BUILDLIB 0
	#endif
	#if RING_MICROCONTROLLER
		/* Tested using Compiler for 32-bit PIC Microcontrollers & Raspberry Pi Pico Microcontroller */
		#define RING_LIMITEDENV 1
		#define RING_LIMITEDSYS 1
	#endif
	/* Memory Model */
	#if RING_LIMITEDENV
		#define RING_LOWMEM 1
		#define RING_NODLL 1
		#define RING_NOSNPRINTF 1
		#define RING_GENOBJ 0
		#define RING_EXTRAOSFUNCTIONS 0
		#define RING_EXTRAFILEFUNCTIONS 0
		#define RING_USEDOUBLEINBYTECODE 0
	#else
		#define RING_LOWMEM 0
		#define RING_NOSNPRINTF 0
		#define RING_GENOBJ 1
		#define RING_EXTRAOSFUNCTIONS 1
		#define RING_EXTRAFILEFUNCTIONS 1
		#define RING_USEDOUBLEINBYTECODE 1
	#endif
	/* Supported Functions */
	#if RING_LIMITEDSYS
		/* C system() function */
		#define RING_SYSTEMFUNCTION 0
		/* Current Dir Functions */
		#define RING_CURRENTDIRFUNCTIONS 0
	#else
		#define RING_SYSTEMFUNCTION 1
		#define RING_CURRENTDIRFUNCTIONS 1
	#endif
	/* Using ANSI C */
	#ifdef ULLONG_MAX
		#define RING_ANSI_C 0
	#else
		#define RING_ANSI_C 1
	#endif
	/* Types */
	#if RING_ANSI_C
		/* Use ANSI C Types */
		#define RING_LONGLONG long
		#define RING_UNSIGNEDLONGLONG unsigned long
		#define RING_LONGLONG_FORMAT "%ld"
		#define RING_UNSIGNEDLONGLONG_FORMAT "%lx"
		#define RING_LONGLONG_LOWVALUE -2147483647L -1
		#define RING_LONGLONG_HIGHVALUE 2147483647L
		#define RING_UNSIGNEDINTEGERPOINTER unsigned int
	#else
		#define RING_LONGLONG long long
		#define RING_UNSIGNEDLONGLONG unsigned long long
		#define RING_LONGLONG_FORMAT "%lld"
		#define RING_UNSIGNEDLONGLONG_FORMAT "%llx"
		#define RING_LONGLONG_LOWVALUE -9007199254740991LL
		#define RING_LONGLONG_HIGHVALUE 9007199254740991LL
		#define RING_UNSIGNEDINTEGERPOINTER uintptr_t
	#endif
	/* DLL/So */
	#if RING_USEDLL
		#if RING_BUILDLIB
			#define RING_API __declspec(dllexport)
		#else
			#define RING_API __declspec(dllimport)
		#endif
	#else
		#define RING_API extern
	#endif
	/* Constants */
	#define RING_LOGFILE 0
	/* Environment Errors */
	#define RING_SEGFAULT "\nError (E1) : Caught SegFault!\n"
	#define RING_OOM "\nError (E2) : Out of Memory!\n"
	#define RING_NOSCOPE "\nError (E3) : Deleting scope while no scope! \n"
	#define RING_LONGINSTRUCTION "\nError (E4) : Long VM Instruction! \n"
	#define RING_OBJFILEWRONGTYPE "\nError (E5) : The file type is not correct - the VM expect a ring object file\n"
	#define RING_OBJFILEWRONGVERSION "\nError (E6) : The Ring Object File version is not correct!\n"
	#define RING_SSCANFERROR "\nError (E7) : Internal error in using sscanf() function!\n"
	#define RING_FSCANFERROR "\nError (E8) : Internal error in using fscanf() function!\n"
	#define RING_CANTOPENFILE "\nError (E9) : Can't open file"
	/* Buffer Size */
	#define RING_CHARBUF 2
	#define RING_HEXCHARBUF 3
	#define RING_SMALLBUF 32
	#define RING_MEDIUMBUF 128
	#define RING_LARGEBUF 256
	#define RING_HUGEBUF 512
	#define RING_BYTEBITS 8
	/* General */
	#if RING_LOWMEM
		#define RING_PATHSIZE 128
		#define RING_PATHLIMIT 256
	#else
		#define RING_PATHSIZE 8192
		#define RING_PATHLIMIT 4096
	#endif
	/* Logic */
	#define RING_TRUE 1
	#define RING_TRUEF 1.0
	#define RING_FALSE 0
	#define RING_FALSEF 0.0
	/* Count/Status */
	#define RING_NOVALUE 0
	#define RING_ZERO 0
	#define RING_ONE 1
	#define RING_TWO 2
	#define RING_THREE 3
	#define RING_FOUR 4
	#define RING_ZEROF 0.0
	#define RING_ONEF 1.0
	#define RING_MINUSONE -1
	/* Decimals */
	#define RING_DECIMALS 2
	/* C Strings */
	#define RING_CSTR_EMPTY ""
	#define RING_CSTR_NL "\n"
	#define RING_CSTR_TAB "\t"
	#define RING_CSTR_CR "\r"
	#define RING_CSTR_MAIN "main"
	#define RING_CSTR_RINGVMSEE "ringvm_see"
	#define RING_CSTR_RINGVMGIVE "ringvm_give"
	#define RING_CSTR_ANONFUNC "_ring_anonymous_func_"
	#define RING_CSTR_INIT "init"
	#define RING_CSTR_THIS "this"
	#define RING_CSTR_SELF "self"
	#define RING_CSTR_OPERATOR "operator"
	#define RING_CSTR_LEN "len"
	#define RING_CSTR_BRACESTART "bracestart"
	#define RING_CSTR_BRACEEXPREVAL "braceexpreval"
	#define RING_CSTR_BRACEEND "braceend"
	#define RING_CSTR_BRACEERROR "braceerror"
	#define RING_CSTR_GETTEMPVAR "ring_gettemp_var"
	#define RING_CSTR_SETTEMPVAR "ring_settemp_var"
	#define RING_CSTR_CATCHERROR "ccatcherror"
	#define RING_CSTR_SYSARGV "sysargv"
	#define RING_CSTR_NULL "NULL"
	#define RING_CSTR_NULLVAR "null"
	#define RING_CSTR_TRUEVAR "true"
	#define RING_CSTR_FALSEVAR "false"
	#define RING_CSTR_NLVAR "nl"
	#define RING_CSTR_FILE "file"
	#define RING_CSTR_STDINVAR "stdin"
	#define RING_CSTR_STDOUTVAR "stdout"
	#define RING_CSTR_STDERRVAR "stderr"
	#define RING_CSTR_TABVAR "tab"
	#define RING_CSTR_CRVAR "cr"
	#define RING_CSTR_THISVAR RING_CSTR_THIS
	#define RING_CSTR_RINGOPTIONALFUNCTIONS "ringoptionalfunctions"
	/* Exit */
	#define RING_EXIT_OK 0
	#define RING_EXIT_FAIL 1
	/* Include Ring Headers */
	#include "ext.h"
	#include "rstring.h"
	#include "vmgcdata.h"
	#include "ritem.h"
	#include "ritems.h"
	#include "rlist.h"
	#include "hashlib.h"
	#include "rhtable.h"
	#include "pooldata.h"
	#include "general.h"
	#include "state.h"
	#include "scanner.h"
	#include "parser.h"
	#include "codegen.h"
	#include "vm.h"
	#include "vmgc.h"
	#include "ringapi.h"
	#include "genlib_e.h"
	#include "objfile.h"
	/* Extensions Headers */
	#ifndef RING_EXTENSION
		#define RING_EXTENSION
		#if RING_VM_MATH
			#include "math_e.h"
		#endif
		#if RING_VM_FILE
			#include "file_e.h"
		#endif
		#if RING_VM_OS
			#include "os_e.h"
		#endif
		#if RING_VM_LISTFUNCS
			#include "list_e.h"
		#endif
		#if RING_VM_REFMETA
			#include "meta_e.h"
		#endif
		#if RING_VM_INFO
			#include "vminfo_e.h"
		#endif
		#if RING_VM_DLL
			#include "dll_e.h"
		#endif
	#endif
#endif
