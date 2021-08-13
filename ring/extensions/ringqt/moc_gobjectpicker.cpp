/****************************************************************************
** Meta object code from reading C++ file 'gobjectpicker.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "cpp/include/gobjectpicker.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'gobjectpicker.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_GObjectPicker_t {
    QByteArrayData data[12];
    char stringdata0[176];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_GObjectPicker_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_GObjectPicker_t qt_meta_stringdata_GObjectPicker = {
    {
QT_MOC_LITERAL(0, 0, 13), // "GObjectPicker"
QT_MOC_LITERAL(1, 14, 11), // "clickedSlot"
QT_MOC_LITERAL(2, 26, 0), // ""
QT_MOC_LITERAL(3, 27, 24), // "containsMouseChangedSlot"
QT_MOC_LITERAL(4, 52, 22), // "dragEnabledChangedSlot"
QT_MOC_LITERAL(5, 75, 11), // "enteredSlot"
QT_MOC_LITERAL(6, 87, 10), // "exitedSlot"
QT_MOC_LITERAL(7, 98, 23), // "hoverEnabledChangedSlot"
QT_MOC_LITERAL(8, 122, 9), // "movedSlot"
QT_MOC_LITERAL(9, 132, 11), // "pressedSlot"
QT_MOC_LITERAL(10, 144, 18), // "pressedChangedSlot"
QT_MOC_LITERAL(11, 163, 12) // "releasedSlot"

    },
    "GObjectPicker\0clickedSlot\0\0"
    "containsMouseChangedSlot\0"
    "dragEnabledChangedSlot\0enteredSlot\0"
    "exitedSlot\0hoverEnabledChangedSlot\0"
    "movedSlot\0pressedSlot\0pressedChangedSlot\0"
    "releasedSlot"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_GObjectPicker[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   64,    2, 0x0a /* Public */,
       3,    0,   65,    2, 0x0a /* Public */,
       4,    0,   66,    2, 0x0a /* Public */,
       5,    0,   67,    2, 0x0a /* Public */,
       6,    0,   68,    2, 0x0a /* Public */,
       7,    0,   69,    2, 0x0a /* Public */,
       8,    0,   70,    2, 0x0a /* Public */,
       9,    0,   71,    2, 0x0a /* Public */,
      10,    0,   72,    2, 0x0a /* Public */,
      11,    0,   73,    2, 0x0a /* Public */,

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
    QMetaType::Void,

       0        // eod
};

void GObjectPicker::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<GObjectPicker *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->clickedSlot(); break;
        case 1: _t->containsMouseChangedSlot(); break;
        case 2: _t->dragEnabledChangedSlot(); break;
        case 3: _t->enteredSlot(); break;
        case 4: _t->exitedSlot(); break;
        case 5: _t->hoverEnabledChangedSlot(); break;
        case 6: _t->movedSlot(); break;
        case 7: _t->pressedSlot(); break;
        case 8: _t->pressedChangedSlot(); break;
        case 9: _t->releasedSlot(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject GObjectPicker::staticMetaObject = { {
    &Qt3DRender::QObjectPicker::staticMetaObject,
    qt_meta_stringdata_GObjectPicker.data,
    qt_meta_data_GObjectPicker,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *GObjectPicker::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *GObjectPicker::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_GObjectPicker.stringdata0))
        return static_cast<void*>(this);
    return Qt3DRender::QObjectPicker::qt_metacast(_clname);
}

int GObjectPicker::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = Qt3DRender::QObjectPicker::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
