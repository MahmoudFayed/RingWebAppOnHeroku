/****************************************************************************
** Meta object code from reading C++ file 'glogvalueaxis.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "cpp/include/glogvalueaxis.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'glogvalueaxis.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_GLogValueAxis_t {
    QByteArrayData data[9];
    char stringdata0[148];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_GLogValueAxis_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_GLogValueAxis_t qt_meta_stringdata_GLogValueAxis = {
    {
QT_MOC_LITERAL(0, 0, 13), // "GLogValueAxis"
QT_MOC_LITERAL(1, 14, 15), // "baseChangedSlot"
QT_MOC_LITERAL(2, 30, 0), // ""
QT_MOC_LITERAL(3, 31, 22), // "labelFormatChangedSlot"
QT_MOC_LITERAL(4, 54, 14), // "maxChangedSlot"
QT_MOC_LITERAL(5, 69, 14), // "minChangedSlot"
QT_MOC_LITERAL(6, 84, 25), // "minorTickCountChangedSlot"
QT_MOC_LITERAL(7, 110, 16), // "rangeChangedSlot"
QT_MOC_LITERAL(8, 127, 20) // "tickCountChangedSlot"

    },
    "GLogValueAxis\0baseChangedSlot\0\0"
    "labelFormatChangedSlot\0maxChangedSlot\0"
    "minChangedSlot\0minorTickCountChangedSlot\0"
    "rangeChangedSlot\0tickCountChangedSlot"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_GLogValueAxis[] = {

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

void GLogValueAxis::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<GLogValueAxis *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->baseChangedSlot(); break;
        case 1: _t->labelFormatChangedSlot(); break;
        case 2: _t->maxChangedSlot(); break;
        case 3: _t->minChangedSlot(); break;
        case 4: _t->minorTickCountChangedSlot(); break;
        case 5: _t->rangeChangedSlot(); break;
        case 6: _t->tickCountChangedSlot(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject GLogValueAxis::staticMetaObject = { {
    &QtCharts::QLogValueAxis::staticMetaObject,
    qt_meta_stringdata_GLogValueAxis.data,
    qt_meta_data_GLogValueAxis,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *GLogValueAxis::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *GLogValueAxis::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_GLogValueAxis.stringdata0))
        return static_cast<void*>(this);
    return QtCharts::QLogValueAxis::qt_metacast(_clname);
}

int GLogValueAxis::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QtCharts::QLogValueAxis::qt_metacall(_c, _id, _a);
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
