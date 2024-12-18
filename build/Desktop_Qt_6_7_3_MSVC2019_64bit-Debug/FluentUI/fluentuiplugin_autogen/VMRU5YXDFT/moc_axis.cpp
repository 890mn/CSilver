/****************************************************************************
** Meta object code from reading C++ file 'axis.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.7.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../FluentUI/qmlcustomplot/axis.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'axis.h' doesn't include <QObject>."
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
struct qt_meta_stringdata_CLASSQmlQCustomPlotSCOPEAxisENDCLASS_t {};
constexpr auto qt_meta_stringdata_CLASSQmlQCustomPlotSCOPEAxisENDCLASS = QtMocHelpers::stringData(
    "QmlQCustomPlot::Axis",
    "QML.Element",
    "auto",
    "QML.Creatable",
    "false",
    "QML.UncreatableReason",
    "",
    "visibleChanged",
    "labelChanged",
    "upperChanged",
    "lowerChanged",
    "gridChanged",
    "QmlQCustomPlot::Grid*",
    "tickerChanged",
    "QmlQCustomPlot::Ticker*",
    "setTickerType",
    "TickerType",
    "type",
    "setRange",
    "position",
    "size",
    "Qt::AlignmentFlag",
    "align",
    "lower",
    "upper",
    "visible",
    "label",
    "grid",
    "ticker",
    "Fixed",
    "Log",
    "Pi",
    "Text",
    "DateTime",
    "Time"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSQmlQCustomPlotSCOPEAxisENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       3,   14, // classinfo
       9,   20, // methods
       6,  107, // properties
       1,  137, // enums/sets
       0,    0, // constructors
       0,       // flags
       6,       // signalCount

 // classinfo: key, value
       1,    2,
       3,    4,
       5,    6,

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       7,    1,   74,    6, 0x06,    8 /* Public */,
       8,    1,   77,    6, 0x06,   10 /* Public */,
       9,    1,   80,    6, 0x06,   12 /* Public */,
      10,    1,   83,    6, 0x06,   14 /* Public */,
      11,    1,   86,    6, 0x06,   16 /* Public */,
      13,    1,   89,    6, 0x06,   18 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
      15,    1,   92,    6, 0x02,   20 /* Public */,
      18,    3,   95,    6, 0x02,   22 /* Public */,
      18,    2,  102,    6, 0x02,   26 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Bool,    6,
    QMetaType::Void, QMetaType::QString,    6,
    QMetaType::Void, QMetaType::Float,    6,
    QMetaType::Void, QMetaType::Float,    6,
    QMetaType::Void, 0x80000000 | 12,    6,
    QMetaType::Void, 0x80000000 | 14,    6,

 // methods: parameters
    QMetaType::Void, 0x80000000 | 16,   17,
    QMetaType::Void, QMetaType::Float, QMetaType::Float, 0x80000000 | 21,   19,   20,   22,
    QMetaType::Void, QMetaType::Float, QMetaType::Float,   23,   24,

 // properties: name, type, flags
      25, QMetaType::Bool, 0x00015003, uint(0), 0,
      26, QMetaType::QString, 0x00015003, uint(1), 0,
      24, QMetaType::Float, 0x00015003, uint(2), 0,
      23, QMetaType::Float, 0x00015003, uint(3), 0,
      27, 0x80000000 | 12, 0x00015409, uint(-1), 0,
      28, 0x80000000 | 14, 0x00015409, uint(-1), 0,

 // enums: name, alias, flags, count, data
      16,   16, 0x0,    6,  142,

 // enum data: key, value
      29, uint(QmlQCustomPlot::Axis::Fixed),
      30, uint(QmlQCustomPlot::Axis::Log),
      31, uint(QmlQCustomPlot::Axis::Pi),
      32, uint(QmlQCustomPlot::Axis::Text),
      33, uint(QmlQCustomPlot::Axis::DateTime),
      34, uint(QmlQCustomPlot::Axis::Time),

       0        // eod
};

Q_CONSTINIT const QMetaObject QmlQCustomPlot::Axis::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSQmlQCustomPlotSCOPEAxisENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSQmlQCustomPlotSCOPEAxisENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_metaTypeArray<
        // property 'visible'
        bool,
        // property 'label'
        QString,
        // property 'upper'
        float,
        // property 'lower'
        float,
        // property 'grid'
        QmlQCustomPlot::Grid*,
        // property 'ticker'
        QmlQCustomPlot::Ticker*,
        // enum 'TickerType'
        Axis::TickerType,
        // Q_OBJECT / Q_GADGET
        Axis,
        // method 'visibleChanged'
        void,
        bool,
        // method 'labelChanged'
        void,
        QString,
        // method 'upperChanged'
        void,
        float,
        // method 'lowerChanged'
        void,
        float,
        // method 'gridChanged'
        void,
        QmlQCustomPlot::Grid *,
        // method 'tickerChanged'
        void,
        QmlQCustomPlot::Ticker *,
        // method 'setTickerType'
        void,
        TickerType,
        // method 'setRange'
        void,
        float,
        float,
        Qt::AlignmentFlag,
        // method 'setRange'
        void,
        float,
        float
    >,
    nullptr
} };

void QmlQCustomPlot::Axis::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Axis *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->visibleChanged((*reinterpret_cast< std::add_pointer_t<bool>>(_a[1]))); break;
        case 1: _t->labelChanged((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 2: _t->upperChanged((*reinterpret_cast< std::add_pointer_t<float>>(_a[1]))); break;
        case 3: _t->lowerChanged((*reinterpret_cast< std::add_pointer_t<float>>(_a[1]))); break;
        case 4: _t->gridChanged((*reinterpret_cast< std::add_pointer_t<QmlQCustomPlot::Grid*>>(_a[1]))); break;
        case 5: _t->tickerChanged((*reinterpret_cast< std::add_pointer_t<QmlQCustomPlot::Ticker*>>(_a[1]))); break;
        case 6: _t->setTickerType((*reinterpret_cast< std::add_pointer_t<TickerType>>(_a[1]))); break;
        case 7: _t->setRange((*reinterpret_cast< std::add_pointer_t<float>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<float>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<Qt::AlignmentFlag>>(_a[3]))); break;
        case 8: _t->setRange((*reinterpret_cast< std::add_pointer_t<float>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<float>>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
        case 4:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
            case 0:
                *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType::fromType< QmlQCustomPlot::Grid* >(); break;
            }
            break;
        case 5:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
            case 0:
                *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType::fromType< QmlQCustomPlot::Ticker* >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Axis::*)(bool );
            if (_t _q_method = &Axis::visibleChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Axis::*)(QString );
            if (_t _q_method = &Axis::labelChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Axis::*)(float );
            if (_t _q_method = &Axis::upperChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (Axis::*)(float );
            if (_t _q_method = &Axis::lowerChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (Axis::*)(QmlQCustomPlot::Grid * );
            if (_t _q_method = &Axis::gridChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (Axis::*)(QmlQCustomPlot::Ticker * );
            if (_t _q_method = &Axis::tickerChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 5;
                return;
            }
        }
    } else if (_c == QMetaObject::RegisterPropertyMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 4:
            *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QmlQCustomPlot::Grid* >(); break;
        case 5:
            *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QmlQCustomPlot::Ticker* >(); break;
        }
    }  else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<Axis *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< bool*>(_v) = _t->visible(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->label(); break;
        case 2: *reinterpret_cast< float*>(_v) = _t->upper(); break;
        case 3: *reinterpret_cast< float*>(_v) = _t->lower(); break;
        case 4: *reinterpret_cast< QmlQCustomPlot::Grid**>(_v) = _t->grid(); break;
        case 5: *reinterpret_cast< QmlQCustomPlot::Ticker**>(_v) = _t->ticker(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<Axis *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->set_visible(*reinterpret_cast< bool*>(_v)); break;
        case 1: _t->set_label(*reinterpret_cast< QString*>(_v)); break;
        case 2: _t->set_upper(*reinterpret_cast< float*>(_v)); break;
        case 3: _t->set_lower(*reinterpret_cast< float*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
}

const QMetaObject *QmlQCustomPlot::Axis::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QmlQCustomPlot::Axis::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSQmlQCustomPlotSCOPEAxisENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int QmlQCustomPlot::Axis::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void QmlQCustomPlot::Axis::visibleChanged(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void QmlQCustomPlot::Axis::labelChanged(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void QmlQCustomPlot::Axis::upperChanged(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void QmlQCustomPlot::Axis::lowerChanged(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void QmlQCustomPlot::Axis::gridChanged(QmlQCustomPlot::Grid * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void QmlQCustomPlot::Axis::tickerChanged(QmlQCustomPlot::Ticker * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}
QT_WARNING_POP
