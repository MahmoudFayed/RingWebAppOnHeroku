cd ..\src

tcc ring.c  ^
rstring.c rlist.c ritem.c ritems.c rhtable.c general.c state.c scanner.c parser.c hashlib.c vmgc.c ^
stmt.c expr.c codegen.c vm.c vmerror.c vmeval.c vmthread.c vmexpr.c vmvars.c ^
vmlists.c vmfuncs.c ringapi.c vmoop.c  ^
vmtry.c vmstr.c vmjump.c vmrange.c ^
vmperf.c vmexit.c vmstack.c vmstate.c genlib_e.c math_e.c file_e.c os_e.c list_e.c meta_e.c vminfo_e.c ^
ext.c dll_e.c objfile.c -I"..\include" -o ../../bin/ring.exe

cd ..\build

