cls
call ../../src/locatevc.bat
cl /c /DEBUG ring_vmmysql.c -I"..\..\include" -I"..\..\libdepwin\mysql\include" 
link /DEBUG ring_vmmysql.obj  ..\..\lib\ring.lib ..\..\libdepwin\MySQL\lib\libmysql.lib /DLL /OUT:..\..\bin\ring_mysql.dll /SUBSYSTEM:CONSOLE,"5.01" 
del ring_vmmysql.obj