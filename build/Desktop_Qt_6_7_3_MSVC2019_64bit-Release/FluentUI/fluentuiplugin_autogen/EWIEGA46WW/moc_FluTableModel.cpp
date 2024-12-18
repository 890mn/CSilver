/****************************************************************************
** Meta object code from reading C++ file 'FluTableModel.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.7.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../FluentUI/FluTableModel.h"
#include <QtCore/qmetatype.h>
#include <QtCore/QList>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'FluTableModel.h' doesn't include <QObject>."
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
struct qt_meta_stringdata_CLASSFluTableModelENDCLASS_t {};
constexpr auto qt_meta_stringdata_CLASSFluTableModelENDCLASS = QtMocHelpers::stringData(
    "FluTableModel",
    "QML.Element",
    "columnSourceChanged",
    "",
    "rowsChanged",
    "clear",
    "getRow",
    "rowIndex",
    "setRow",
    "row",
    "insertRow",
    "removeRow",
    "rows",
    "appendRow",
    "columnSource",
    "QList<QVariantMap>",
    "rowCount"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSFluTableModelENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       1,   14, // classinfo
       9,   16, // methods
       3,   97, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // classinfo: key, value
       1,    0,

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       2,    0,   70,    3, 0x06,    4 /* Public */,
       4,    0,   71,    3, 0x06,    5 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
       5,    0,   72,    3, 0x02,    6 /* Public */,
       6,    1,   73,    3, 0x02,    7 /* Public */,
       8,    2,   76,    3, 0x02,    9 /* Public */,
      10,    2,   81,    3, 0x02,   12 /* Public */,
      11,    2,   86,    3, 0x02,   15 /* Public */,
      11,    1,   91,    3, 0x22,   18 /* Public | MethodCloned */,
      13,    1,   94,    3, 0x02,   20 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void,
    QMetaType::QVariant, QMetaType::Int,    7,
    QMetaType::Void, QMetaType::Int, QMetaType::QVariant,    7,    9,
    QMetaType::Void, QMetaType::Int, QMetaType::QVariant,    7,    9,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,    7,   12,
    QMetaType::Void, QMetaType::Int,    7,
    QMetaType::Void, QMetaType::QVariant,    9,

 // properties: name, type, flags
      14, 0x80000000 | 15, 0x0001500b, uint(0), 0,
      12, 0x80000000 | 15, 0x0001500b, uint(1), 0,
      16, QMetaType::Int, 0x00015401, uint(-1), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject FluTableModel::staticMetaObject = { {
    QMetaObject::SuperData::link<QAbstractTableModel::staticMetaObject>(),
    qt_meta_stringdata_CLASSFluTableModelENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSFluTableModelENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_metaTypeArray<
        // property 'columnSource'
        QList<QVariantMap>,
        // property 'rows'
        QList<QVariantMap>,
        // property 'rowCount'
        int,
        // Q_OBJECT / Q_GADGET
        FluTableModel,
        // method 'columnSourceChanged'
        void,
        // method 'rowsChanged'
        void,
        // method 'clear'
        void,
        // method 'getRow'
        QVariant,
        int,
        // method 'setRow'
        void,
        int,
        QVariant,
        // method 'insertRow'
        void,
        int,
        QVariant,
        // method 'removeRow'
        void,
        int,
        int,
        // method 'removeRow'
        void,
        int,
        // method 'appendRow'
        void,
        QVariant
    >,
    nullptr
} };

void FluTableModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<FluTableModel *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->columnSourceChanged(); break;
        case 1: _t->rowsChanged(); break;
        case 2: _t->clear(); break;
        case 3: { QVariant _r = _t->getRow((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])));
            if (_a[0]) *reinterpret_cast< QVariant*>(_a[0]) = std::move(_r); }  break;
        case 4: _t->setRow((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QVariant>>(_a[2]))); break;
        case 5: _t->insertRow((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QVariant>>(_a[2]))); break;
        case 6: _t->removeRow((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2]))); break;
        case 7: _t->removeRow((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 8: _t->appendRow((*reinterpret_cast< std::add_pointer_t<QVariant>>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (FluTableModel::*)();
            if (_t _q_method = &FluTableModel::columnSourceChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (FluTableModel::*)();
            if (_t _q_method = &FluTableModel::rowsChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
    } else if (_c == QMetaObject::RegisterPropertyMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 1:
        case 0:
            *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QList<QVariantMap> >(); break;
        }
    }  else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<FluTableModel *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QList<QVariantMap>*>(_v) = _t->_columnSource; break;
        case 1: *reinterpret_cast< QList<QVariantMap>*>(_v) = _t->_rows; break;
        case 2: *reinterpret_cast< int*>(_v) = _t->rowCount(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<FluTableModel *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0:
            if (_t->_columnSource != *reinterpret_cast< QList<QVariantMap>*>(_v)) {
                _t->_columnSource = *reinterpret_cast< QList<QVariantMap>*>(_v);
                Q_EMIT _t->columnSourceChanged();
            }
            break;
        case 1:
            if (_t->_rows != *reinterpret_cast< QList<QVariantMap>*>(_v)) {
                _t->_rows = *reinterpret_cast< QList<QVariantMap>*>(_v);
                Q_EMIT _t->rowsChanged();
            }
            break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
}

const QMetaObject *FluTableModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *FluTableModel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSFluTableModelENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QAbstractTableModel::qt_metacast(_clname);
}

int FluTableModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QAbstractTableModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 9;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}

// SIGNAL 0
void FluTableModel::columnSourceChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void FluTableModel::rowsChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}
QT_WARNING_POP
