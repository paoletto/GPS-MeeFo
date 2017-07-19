TEMPLATE = app

QT += qml quick location positioning sensors
CONFIG += c++11

HEADERS += $$files($$PWD/src/*.h)
SOURCES += $$files($$PWD/src/*.cpp)



OTHER_FILES += $$files($$PWD/assets/*.*) $$files($$PWD/qml/*.qml) $$files($$PWD/qml/*.js) $$PWD/LICENSE $$PWD/README


RESOURCES += qml.qrc

DESTDIR = $$PWD/bin

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
