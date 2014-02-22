QAUTOMATEDSTORESIMULATOR_ROOT = $$PWD

QAUTOMATEDSTORESIMULATOR_BIN = $$QAUTOMATEDSTORESIMULATOR_ROOT/bin

QAUTOMATEDSTORESIMULATOR_LIB = $$QAUTOMATEDSTORESIMULATOR_ROOT/lib

QAUTOMATEDSTORESIMULATOR_OBJ_LIB = $$QAUTOMATEDSTORESIMULATOR_ROOT/obj_lib

QAUTOMATEDSTORESIMULATOR_MOC_LIB = $$QAUTOMATEDSTORESIMULATOR_ROOT/moc_lib

QAUTOMATEDSTORESIMULATOR_OBJ_GUI = $$QAUTOMATEDSTORESIMULATOR_ROOT/obj_gui

QAUTOMATEDSTORESIMULATOR_MOC_GUI = $$QAUTOMATEDSTORESIMULATOR_ROOT/moc_gui

QAUTOMATEDSTORESIMULATOR_OBJ_TESTS = $$QAUTOMATEDSTORESIMULATOR_ROOT/obj_tests

QAUTOMATEDSTORESIMULATOR_MOC_TESTS = $$QAUTOMATEDSTORESIMULATOR_ROOT/moc_tests

DESTDIR = $$QAUTOMATEDSTORESIMULATOR_BIN

CONFIG += c++11

QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -pedantic -Wshadow -Wpointer-arith -Wcast-align -Wwrite-strings -Wmissing-declarations \
                    -Wredundant-decls -Wno-long-long -Wuninitialized
