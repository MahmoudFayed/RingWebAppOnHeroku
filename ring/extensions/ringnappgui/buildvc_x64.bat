cls
setlocal enableextensions enabledelayedexpansion
call ../../language/build/locatevc.bat x64
cl /c  ring_nappgui.c -I"..\..\language\include" -I"..\libdepwin\nappgui\src"
link ring_nappgui.obj  ..\..\lib\ring.lib ..\libdepwin\nappgui\lib\x64\casino.lib ..\libdepwin\nappgui\lib\x64\core.lib ..\libdepwin\nappgui\lib\x64\draw2d.lib ..\libdepwin\nappgui\lib\x64\geom2d.lib ..\libdepwin\nappgui\lib\x64\gui.lib ..\libdepwin\nappgui\lib\x64\inet.lib ..\libdepwin\nappgui\lib\x64\osapp.lib ..\libdepwin\nappgui\lib\x64\osbs.lib ..\libdepwin\nappgui\lib\x64\osgui.lib ..\libdepwin\nappgui\lib\x64\sewer.lib kernel32.lib user32.lib shell32.lib gdi32.lib comdlg32.lib /DLL /OUT:ring_nappgui.dll 
del ring_nappgui.obj
endlocal
