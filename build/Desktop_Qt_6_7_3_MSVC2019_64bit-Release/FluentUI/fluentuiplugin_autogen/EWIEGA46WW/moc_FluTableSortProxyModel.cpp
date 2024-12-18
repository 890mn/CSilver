/****************************************************************************
** Meta object code from reading C++ file 'FluTableSortProxyModel.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.7.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../FluentUI/FluTableSortProxyModel.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'FluTableSortProxyModel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.7.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASSFluTableSortProxyModelENDCLASS_t {};
constexpr auto qt_meta_stringdata_CLASSFluTableSortProxyModelENDCLASS = QtMocHelpers::stringData(
    "FluTableSortProxyModel",
    "QML.Element",
    "modelChanged",
    "",
    "getRow",
    "rowIndex",
    "setRow",
    "val",
    "insertRow",
    "removeRow",
    "rows",
    "setComparator",
    "QJSValue",
    "comparator",
    "setFilter",
    "filter",
    "model"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSFluTableSortProxyModelENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       1,   14, // classinfo
       7,   16, // methods
       1,   83, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // classinfo: key, value
       1,    0,

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       2,    0,   58,    3, 0x06,    2 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
       4,    1,   59,    3, 0x02,    3 /* Public */,
       6,    2,   62,    3, 0x02,    5 /* Public */,
       8,    2,   67,    3, 0x02,    8 /* Public */,
       9,    2,   72,    3, 0x02,   11 /* Public */,
      11,    1,   77,    3, 0x02,   14 /* Public */,
      14,    1,   80,    3, 0x02,   16 /* Public */,

 // signals: parameters
    QMetaType::Void,

 // methods: parameters
    QMetaType::QVariant, QMetaType::Int,    5,
    QMetaType::Void, QMetaType::Int, QMetaType::QVariant,    5,    7,
    QMetaType::Void, QMetaType::Int, QMetaType::QVariant,    5,    7,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,    5,   10,
    QMetaType::Void, 0x80000000 | 12,   13,
    QMetaType::Void, 0x80000000 | 12,   15,

 // properties: name, type, flags
      16, QMetaType::QVariant, 0x00015003, uint(0), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject FluTableSortProxyModel::staticMetaObject = { {
    QMetaObject::SuperData::link<QSortFilterProxyModel::staticMetaObject>(),
    qt_meta_stringdata_CLASSFluTableSortProxyModelENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSFluTableSortProxyModelENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_metaTypeArray<
        // property 'model'
        QVariant,
        // Q_OBJECT / Q_GADGET
        FluTableSortProxyModel,
        // method 'modelChanged'
        void,
        // method 'getRow'
        QVariant,
        int,
        // method 'setRow'
        void,
        int,
        const QVariant &,
        // method 'insertRow'
        void,
        int,
        const QVariant &,
        // method 'removeRow'
        void,
        int,
        int,
        // method 'setComparator'
        void,
        const QJSValue &,
        // method 'setFilter'
        void,
        const QJSValue &
    >,
    nullptr
} };

void FluTableSortProxyModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<FluTableSortProxyModel *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->modelChanged(); break;
        case 1: { QVariant _r = _t->getRow((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])));
            if (_a[0]) *reinterpret_cast< QVariant*>(_a[0]) = std::move(_r); }  break;
        case 2: _t->setRow((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QVariant>>(_a[2]))); break;
        case 3: _t->insertRow((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QVariant>>(_a[2]))); break;
        case 4: _t->removeRow((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2]))); break;
        case 5: _t->setComparator((*reinterpret_cast< std::add_pointer_t<QJSValue>>(_a[1]))); break;
        case 6: _t->setFilter((*reinterpret_cast< std::add_pointer_t<QJSValue>>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
        case 5:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
            case 0:
                *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType::fromType< QJSValue >(); break;
            }
            break;
        case 6:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
            case 0:
                *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType::fromType< QJSValue >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (FluTableSortProxyModel::*)();
            if (_t _q_method = &FluTableSortProxyModel::modelChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
    } else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<FluTableSortProxyModel *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QVariant*>(_v) = _t->_model; break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<FluTableSortProxyModel *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0:
            if (_t->_model != *reinterpret_cast< QVariant*>(_v)) {
                _t->_model = *reinterpret_cast< QVariant*>(_v);
                Q_EMIT _t->modelChanged();
            }
            break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
}

const QMetaObject *FluTableSortProxyModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *FluTableSortProxyModel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSFluTableSortProxyModelENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QSortFilterProxyModel::qt_metacast(_clname);
}

int FluTableSortProxyModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QSortFilterProxyModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    }
    return _id;
}

// SIGNAL 0
void FluTableSortProxyModel::modelChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}
QT_WARNING_POP
