QT -= gui widgets

TARGET = tests
TEMPLATE = app

include (../QAutomatedStoreSimulator.pri)
include (../gtest.pri)

LIBS += -L$$QAUTOMATEDSTORESIMULATOR_BIN
LIBS += -lQAutomatedStoreSimulator

INCLUDEPATH += $$QAUTOMATEDSTORESIMULATOR_LIB

SOURCES += main.cpp \
    test_store.cpp

#HEADERS  +=
