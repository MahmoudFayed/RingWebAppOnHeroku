cls
setlocal enableextensions enabledelayedexpansion
call ../../language/src/locatevc.bat auto %1
cl /c /DEBUG ring_vmsqlite.c sqlite3.c -I"..\..\language\include"  
link /DEBUG ring_vmsqlite.obj sqlite3.obj  ..\..\lib\ring.lib /DLL /OUT:..\..\bin\ring_sqlite.dll /SUBSYSTEM:CONSOLE,"5.01" 
del *.obj
endlocal
