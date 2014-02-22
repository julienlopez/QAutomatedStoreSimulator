QT -= gui widgets

TARGET = QAutomatedStoreSimulator
TEMPLATE = lib

include (../QAutomatedStoreSimulator.pri)

SOURCES += \

HEADERS  += \
    utils/namespace_utils.hpp \
    utils/pimpl.hpp \
    utils/noncopiable.hpp \
    utils/noninstantiable.hpp \
