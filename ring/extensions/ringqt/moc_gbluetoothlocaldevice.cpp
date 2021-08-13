/****************************************************************************
** Meta object code from reading C++ file 'gbluetoothlocaldevice.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "cpp/include/gbluetoothlocaldevice.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'gbluetoothlocaldevice.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_GBluetoothLocalDevice_t {
    QByteArrayData data[9];
    char stringdata0[178];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_GBluetoothLocalDevice_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_GBluetoothLocalDevice_t qt_meta_stringdata_GBluetoothLocalDevice = {
    {
QT_MOC_LITERAL(0, 0, 21), // "GBluetoothLocalDevice"
QT_MOC_LITERAL(1, 22, 19), // "deviceConnectedSlot"
QT_MOC_LITERAL(2, 42, 0), // ""
QT_MOC_LITERAL(3, 43, 22), // "deviceDisconnectedSlot"
QT_MOC_LITERAL(4, 66, 9), // "errorSlot"
QT_MOC_LITERAL(5, 76, 24), // "hostModeStateChangedSlot"
QT_MOC_LITERAL(6, 101, 30), // "pairingDisplayConfirmationSlot"
QT_MOC_LITERAL(7, 132, 25), // "pairingDisplayPinCodeSlot"
QT_MOC_LITERAL(8, 158, 19) // "pairingFinishedSlot"

    },
    "GBluetoothLocalDevice\0deviceConnectedSlot\0"
    "\0deviceDisconnectedSlot\0errorSlot\0"
    "hostModeStateChangedSlot\0"
    "pairingDisplayConfirmationSlot\0"
    "pairingDisplayPinCodeSlot\0pairingFinishedSlot"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_GBluetoothLocalDevice[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   49,    2, 0x0a /* Public */,
       3,    0,   50,    2, 0x0a /* Public */,
       4,    0,   51,    2, 0x0a /* Public */,
       5,    0,   52,    2, 0x0a /* Public */,
       6,    0,   53,    2, 0x0a /* Public */,
       7,    0,   54,    2, 0x0a /* Public */,
       8,    0,   55,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void GBluetoothLocalDevice::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<GBluetoothLocalDevice *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->deviceConnectedSlot(); break;
        case 1: _t->deviceDisconnectedSlot(); break;
        case 2: _t->errorSlot(); break;
        case 3: _t->hostModeStateChangedSlot(); break;
        case 4: _t->pairingDisplayConfirmationSlot(); break;
        case 5: _t->pairingDisplayPinCodeSlot(); break;
        case 6: _t->pairingFinishedSlot(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject GBluetoothLocalDevice::staticMetaObject = { {
    &QBluetoothLocalDevice::staticMetaObject,
    qt_meta_stringdata_GBluetoothLocalDevice.data,
    qt_meta_data_GBluetoothLocalDevice,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *GBluetoothLocalDevice::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *GBluetoothLocalDevice::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_GBluetoothLocalDevice.stringdata0))
        return static_cast<void*>(this);
    return QBluetoothLocalDevice::qt_metacast(_clname);
}

int GBluetoothLocalDevice::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QBluetoothLocalDevice::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 7;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
