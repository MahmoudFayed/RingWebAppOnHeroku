/****************************************************************************
** Meta object code from reading C++ file 'gareaseries.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "cpp/include/gareaseries.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'gareaseries.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_GAreaSeries_t {
    QByteArrayData data[14];
    char stringdata0[268];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_GAreaSeries_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_GAreaSeries_t qt_meta_stringdata_GAreaSeries = {
    {
QT_MOC_LITERAL(0, 0, 11), // "GAreaSeries"
QT_MOC_LITERAL(1, 12, 22), // "borderColorChangedSlot"
QT_MOC_LITERAL(2, 35, 0), // ""
QT_MOC_LITERAL(3, 36, 11), // "clickedSlot"
QT_MOC_LITERAL(4, 48, 16), // "colorChangedSlot"
QT_MOC_LITERAL(5, 65, 17), // "doubleClickedSlot"
QT_MOC_LITERAL(6, 83, 11), // "hoveredSlot"
QT_MOC_LITERAL(7, 95, 30), // "pointLabelsClippingChangedSlot"
QT_MOC_LITERAL(8, 126, 27), // "pointLabelsColorChangedSlot"
QT_MOC_LITERAL(9, 154, 26), // "pointLabelsFontChangedSlot"
QT_MOC_LITERAL(10, 181, 28), // "pointLabelsFormatChangedSlot"
QT_MOC_LITERAL(11, 210, 32), // "pointLabelsVisibilityChangedSlot"
QT_MOC_LITERAL(12, 243, 11), // "pressedSlot"
QT_MOC_LITERAL(13, 255, 12) // "releasedSlot"

    },
    "GAreaSeries\0borderColorChangedSlot\0\0"
    "clickedSlot\0colorChangedSlot\0"
    "doubleClickedSlot\0hoveredSlot\0"
    "pointLabelsClippingChangedSlot\0"
    "pointLabelsColorChangedSlot\0"
    "pointLabelsFontChangedSlot\0"
    "pointLabelsFormatChangedSlot\0"
    "pointLabelsVisibilityChangedSlot\0"
    "pressedSlot\0releasedSlot"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_GAreaSeries[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   74,    2, 0x0a /* Public */,
       3,    0,   75,    2, 0x0a /* Public */,
       4,    0,   76,    2, 0x0a /* Public */,
       5,    0,   77,    2, 0x0a /* Public */,
       6,    0,   78,    2, 0x0a /* Public */,
       7,    0,   79,    2, 0x0a /* Public */,
       8,    0,   80,    2, 0x0a /* Public */,
       9,    0,   81,    2, 0x0a /* Public */,
      10,    0,   82,    2, 0x0a /* Public */,
      11,    0,   83,    2, 0x0a /* Public */,
      12,    0,   84,    2, 0x0a /* Public */,
      13,    0,   85,    2, 0x0a /* Public */,

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
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void GAreaSeries::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<GAreaSeries *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->borderColorChangedSlot(); break;
        case 1: _t->clickedSlot(); break;
        case 2: _t->colorChangedSlot(); break;
        case 3: _t->doubleClickedSlot(); break;
        case 4: _t->hoveredSlot(); break;
        case 5: _t->pointLabelsClippingChangedSlot(); break;
        case 6: _t->pointLabelsColorChangedSlot(); break;
        case 7: _t->pointLabelsFontChangedSlot(); break;
        case 8: _t->pointLabelsFormatChangedSlot(); break;
        case 9: _t->pointLabelsVisibilityChangedSlot(); break;
        case 10: _t->pressedSlot(); break;
        case 11: _t->releasedSlot(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject GAreaSeries::staticMetaObject = { {
    &QtCharts::QAreaSeries::staticMetaObject,
    qt_meta_stringdata_GAreaSeries.data,
    qt_meta_data_GAreaSeries,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *GAreaSeries::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *GAreaSeries::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_GAreaSeries.stringdata0))
        return static_cast<void*>(this);
    return QtCharts::QAreaSeries::qt_metacast(_clname);
}

int GAreaSeries::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QtCharts::QAreaSeries::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 12)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 12;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE