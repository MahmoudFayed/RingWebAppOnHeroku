/****************************************************************************
** Meta object code from reading C++ file 'gserialport.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "cpp/include/gserialport.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'gserialport.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_GSerialPort_t {
    QByteArrayData data[11];
    char stringdata0[202];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_GSerialPort_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_GSerialPort_t qt_meta_stringdata_GSerialPort = {
    {
QT_MOC_LITERAL(0, 0, 11), // "GSerialPort"
QT_MOC_LITERAL(1, 12, 19), // "baudRateChangedSlot"
QT_MOC_LITERAL(2, 32, 0), // ""
QT_MOC_LITERAL(3, 33, 23), // "breakEnabledChangedSlot"
QT_MOC_LITERAL(4, 57, 19), // "dataBitsChangedSlot"
QT_MOC_LITERAL(5, 77, 28), // "dataTerminalReadyChangedSlot"
QT_MOC_LITERAL(6, 106, 9), // "errorSlot"
QT_MOC_LITERAL(7, 116, 22), // "flowControlChangedSlot"
QT_MOC_LITERAL(8, 139, 17), // "parityChangedSlot"
QT_MOC_LITERAL(9, 157, 24), // "requestToSendChangedSlot"
QT_MOC_LITERAL(10, 182, 19) // "stopBitsChangedSlot"

    },
    "GSerialPort\0baudRateChangedSlot\0\0"
    "breakEnabledChangedSlot\0dataBitsChangedSlot\0"
    "dataTerminalReadyChangedSlot\0errorSlot\0"
    "flowControlChangedSlot\0parityChangedSlot\0"
    "requestToSendChangedSlot\0stopBitsChangedSlot"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_GSerialPort[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   59,    2, 0x0a /* Public */,
       3,    0,   60,    2, 0x0a /* Public */,
       4,    0,   61,    2, 0x0a /* Public */,
       5,    0,   62,    2, 0x0a /* Public */,
       6,    0,   63,    2, 0x0a /* Public */,
       7,    0,   64,    2, 0x0a /* Public */,
       8,    0,   65,    2, 0x0a /* Public */,
       9,    0,   66,    2, 0x0a /* Public */,
      10,    0,   67,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void GSerialPort::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<GSerialPort *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->baudRateChangedSlot(); break;
        case 1: _t->breakEnabledChangedSlot(); break;
        case 2: _t->dataBitsChangedSlot(); break;
        case 3: _t->dataTerminalReadyChangedSlot(); break;
        case 4: _t->errorSlot(); break;
        case 5: _t->flowControlChangedSlot(); break;
        case 6: _t->parityChangedSlot(); break;
        case 7: _t->requestToSendChangedSlot(); break;
        case 8: _t->stopBitsChangedSlot(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject GSerialPort::staticMetaObject = { {
    &QSerialPort::staticMetaObject,
    qt_meta_stringdata_GSerialPort.data,
    qt_meta_data_GSerialPort,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *GSerialPort::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *GSerialPort::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_GSerialPort.stringdata0))
        return static_cast<void*>(this);
    return QSerialPort::qt_metacast(_clname);
}

int GSerialPort::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QSerialPort::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
