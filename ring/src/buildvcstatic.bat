echo off
call "C:\Program Files\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86

cls
cl /Ox ring.c  ^
ring_string.c ring_list.c ring_item.c ring_items.c ring_hashtable.c ring_state.c ring_scanner.c ring_parser.c ring_hashlib.c ring_vmgc.c ^
ring_stmt.c ring_expr.c ring_codegen.c ring_vm.c ring_vmexpr.c ring_vmvars.c ^
ring_vmlists.c ring_vmfuncs.c ring_api.c ring_vmoop.c ring_vmcui.c ^
ring_vmtrycatch.c ring_vmstrindex.c ring_vmjump.c ring_vmduprange.c ^
ring_vmperformance.c ring_vmexit.c ring_vmstackvars.c ring_vmstate.c ring_vmmath.c ring_vmfile.c ring_vmos.c ring_vmlistfuncs.c ring_vmrefmeta.c ^
ring_ext.c ring_vmdll.c ring_objfile.c -I"..\include" /link /SUBSYSTEM:CONSOLE,"5.01" /OUT:..\bin\ring.exe 

del *.obj

