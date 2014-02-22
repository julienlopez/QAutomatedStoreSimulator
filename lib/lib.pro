QT -= gui widgets

TARGET = QAutomatedStoreSimulator
TEMPLATE = lib

include (../QAutomatedStoreSimulator.pri)

SOURCES += \
    store.cpp \
    shelf.cpp \
    robot.cpp

HEADERS  += \
    utils/namespace_utils.hpp \
    utils/pimpl.hpp \
    utils/noncopiable.hpp \
    utils/noninstantiable.hpp \
    store.hpp \
    utils/make_unique.hpp \
    shelf.hpp \
    robot.hpp
