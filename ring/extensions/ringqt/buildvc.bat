IF "%RING_QT_DIR%"=="" SET RING_QT_DIR=C:\Qt
IF "%RING_QT_VERSION%"=="" SET RING_QT_VERSION=5.15.19

setlocal enableextensions enabledelayedexpansion
call ..\..\language\build\locatevc.bat auto %1
"%RING_QT_DIR%\%RING_QT_VERSION%\msvc2019\bin\qmake.exe" ring_qt515.pro -spec win32-msvc "CONFIG+=qtquickcompiler"
"%RING_QT_DIR%\Tools\QtCreator\bin\jom\jom.exe"
copy release\ringqt.dll ..\..\bin
endlocal