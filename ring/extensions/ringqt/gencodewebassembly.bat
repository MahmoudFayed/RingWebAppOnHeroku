set RINGQT_WEBASSEMBLY=1
set RINGQT_ANDROID=1
set RINGQT_QT512=1
set RINGQT_NOSQL=1
set RINGQT_NOPOSITIONING=1
set RINGQT_NOWEBKITWIDGETS=1
set RINGQT_NOWEBENGINEWIDGETS=1
set RINGQT_NOSERIALPORT=1
set RINGQT_NOAXCONTAINER=1
set RINGQT_NOQT3D=1
set RINGQT_NOWEBKIT=1
set RINGQT_NOBLUETOOTH=1

ring ..\codegen\parsec.ring classes\qt.cf cpp\src\ring_qt.cpp ..\..\libraries\guilib\classes\ring_qt.ring
cd events
ring qtevents.ring
cd ..
copy cpp\src\*.cpp ..\..\webassembly\ringqt\project
copy cpp\include\*.h ..\..\webassembly\ringqt\project

set RINGQT_WEBASSEMBLY=
set RINGQT_ANDROID=
set RINGQT_QT512=
set RINGQT_NOSQL=
set RINGQT_NOPOSITIONING=
set RINGQT_NOWEBKITWIDGETS=
set RINGQT_NOWEBENGINEWIDGETS=
set RINGQT_NOSERIALPORT=
set RINGQT_NOAXCONTAINER=
set RINGQT_NOQT3D=
set RINGQT_NOWEBKIT=
set RINGQT_NOBLUETOOTH=