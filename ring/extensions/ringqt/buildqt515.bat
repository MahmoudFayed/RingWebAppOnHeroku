call ..\..\language\src\locatevc.bat
"C:\Qt\5.15.0\msvc2019\bin\qmake.exe" ring_qt512.pro -spec win32-msvc "CONFIG+=qtquickcompiler"
"C:\Qt\Tools\QtCreator\bin\jom.exe"
copy release\ringqt.dll ..\..\bin
