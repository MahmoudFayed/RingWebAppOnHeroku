IF "%RING_QT_DIR%"=="" SET RING_QT_DIR=C:\Qt
IF "%RING_QT_VERSION%"=="" SET RING_QT_VERSION=5.15.19

cd ..

setlocal

rem build Ring Compiler/VM
cd language\build
call buildvc_x64
call buildvcw_x64
cd ..\..

rem open extensions folder
cd extensions

rem build Ring allegro
cd ringallegro
call buildvc_x64.bat

rem build Ring OpenGL
cd ..\ringopengl\opengl21
call buildvc_x64.bat
cd ..\..

rem build Ring CJSON
cd ringcjson
call buildvc_x64
cd ..

rem build Ring Console Colors
cd ringconsolecolors
call buildvc_x64
cd ..

rem build Ring FreeGLUT
cd ringfreeglut
call buildvc_x64
cd ..

rem build Ring stbImage
cd ringstbimage
call buildvc_x64
cd ..

rem build Ring Threads
cd ringthreads
call buildvc_x64
cd ..

rem build Ring RayLib
cd ringraylib5\src
call buildvc_x64
cd ..\..

rem build Ring Qt
cd ringqt
del /q debug\*.*
del /q release\*.*
call gencode_core
call buildvc_core_x64

del /q debug\*.*
del /q release\*.*
call gencode_light
call buildvc_light_x64

del /q debug\*.*
del /q release\*.*
call gencode_nobluetooth
call buildvc_nobluetooth_x64
cd binupdate
call installqt515_x64
cd ..\..

rem build RingLibuv
cd ringlibuv
call buildvc_x64
cd ..

rem build RingInternet
cd ringinternet
call buildvc_x64
cd ..

rem build RingCurl
cd ringcurl
call buildvc_x64
cd ..

rem build RingOpenSSL
cd ringopenssl
call buildvc_x64
cd ..

rem build RingLibui
cd ringlibui
call buildvc_x64
cd ..

rem build RingBeep
cd ringbeep
call buildvc_x64
cd ..

rem build RingODBC
cd ringodbc
call buildvc_x64
cd ..

rem build RingHTTPLib
cd ringhttplib
call buildvc_x64
cd ..

rem build RingMouseEvent
cd ringmouseevent
call buildvc_x64
cd ..

rem build RingMurmurHash
cd ringmurmurhash
call buildvc_x64
cd ..

rem build RingSockets
cd ringsockets
call buildvc_x64
cd ..

rem build RingSQLite
cd ringsqlite
call buildvc_x64
cd ..

rem build RingZip
cd ringzip
call buildvc_x64
cd ..

rem build RingWinAPI
cd ringwinapi
call buildvc_x64
cd ..

rem build RingWinCREG
cd ringwincreg
call buildvc_x64
cd ..

rem build RingWinLib
cd ringwinlib
call buildvc_x64
cd ..

rem build RingTilengine
cd ringtilengine
call buildvc_x64
cd ..

rem build RingLibSDL
cd ringsdl
call buildvc_x64
cd ..

rem build RingMySQL
cd ringmysql
call buildvc_x64
cd ..

rem build RingPostgreSQL
cd ringpostgresql
call buildvc_x64
cd ..

rem build RingRogueUtil
cd ringrogueutil
call buildvc_x64
cd ..

rem build RingPDFGen
cd ringpdfgen
call buildvc_x64
cd ..

rem build RingFastPro
cd ringfastpro
call buildvc_x64
cd ..\..\

rem build Tools 
cd tools\ring2exe
call build
cd ..\ringpm
call build
cd ..\ringrepl
call build
cd ..\folder2qrc
call build
cd ..\..\language\tests
call build
cd ..\..

rem build Sudoku
cd applications\sudoku\v2
call buildvc_x64
cd ..\v3
call buildvc_x64
cd ..\..\..\

rem build extensions/tutorial 
cd extensions/tutorial/createtable
call buildvc_x64
cd ../displaylist
call buildvc_x64
cd ../filterlist
call buildvc_x64
cd ../generatelist
call buildvc_x64
cd ../helloworld
call buildvc_x64
cd ../helloworld2
call buildvc_x64
cd ../incrementlist
call buildvc_x64
cd ../integerpointer
call buildvc_x64
cd ../mandelbrot
call buildvc_x64
cd ../replicatelist
call buildvc_x64
cd ../sayhello
call buildvc_x64
cd ../stringpointer
call buildvc_x64
cd ../sumlist
call buildvc_x64
cd ../sumtwonumbers
call buildvc_x64
cd ../updatetable
call buildvc_x64
cd ..\..\..\

cd samples\Drawing\Mandelbrot
call buildvc_x64
cd ..\..\..\

copy tools\ringnotepad\rnoteexe\RingNotepad.exe .

rem copy dll files
cd bin
copy ..\extensions\libdepwin\extra\*.dll .
copy ..\extensions\libdepwin\cruntime_x64\*.dll .
copy ..\extensions\libdepwin\Allegro5.2.8\bin\x64\*.dll .
copy ..\extensions\libdepwin\freeglut\bin\x64\*.dll .
copy ..\extensions\libdepwin\glew\bin\Release\x64\*.dll .
copy ..\extensions\libdepwin\raylib5_x64\lib\*.dll .
copy ..\extensions\libdepwin\libuishared_x64\*.dll .
copy ..\extensions\libdepwin\tilengine_x64\lib\*.dll .
copy ..\extensions\libdepwin\libsdl\SDL2_vc\lib\x64\*.dll .
copy ..\extensions\libdepwin\libsdl\SDL2_image\lib\x64\*.dll .
copy ..\extensions\libdepwin\libsdl\SDL2_mixer\lib\x64\*.dll .
copy ..\extensions\libdepwin\libsdl\SDL2_net\lib\x64\*.dll .
copy ..\extensions\libdepwin\libsdl\SDL2_ttf\lib\x64\*.dll .
copy ..\extensions\libdepwin\mysql_x64\lib\*.dll .
copy ..\extensions\libdepwin\pgsql_x64\lib\*.dll .


endlocal