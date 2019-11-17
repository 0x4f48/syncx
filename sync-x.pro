QT += quick
CONFIG += c++11 link_pkgconfig

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS


PKGCONFIG += libssl libcrypto libusb-1.0 glib-2.0 gobject-2.0
PKGCONFIG += gstreamer-1.0 gstreamer-app-1.0 gstreamer-video-1.0
PKGCONFIG += Qt5GLib-2.0 Qt5GStreamer-1.0 Qt5GStreamerQuick-1.0 Qt5GStreamerUtils-1.0
PKGCONFIG += protobuf libudev

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp \
    common/glib_utils.cpp \
    hu/generated.x64/hu.pb.cc \
    hu/hu_aad.cpp \
    hu/hu_aap.cpp \
    hu/hu_ssl.cpp \
    hu/hu_tcp.cpp \
    hu/hu_usb.cpp \
    hu/hu_uti.cpp \
    headunit.cpp \
    launch.cpp

RESOURCES += qml.qrc \
    resources.qrc

INCLUDEPATH +=hu
INCLUDEPATH +=hu/generated.x64
INCLUDEPATH +=common

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    common/glib_utils.h \
    hu/generated.x64/hu.pb.h \
    hu/hu_aad.h \
    hu/hu_aap.h \
    hu/hu_ssl.h \
    hu/hu_tcp.h \
    hu/hu_usb.h \
    hu/hu_uti.h \
    headunit.h \
    launch.h
