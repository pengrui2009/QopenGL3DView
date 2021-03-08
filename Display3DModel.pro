#-------------------------------------------------
#
# Project created by QtCreator 2013-08-29T00:18:56
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

lessThan(QT_MAJOR_VERSION, 5): error(This project requires Qt 5 or later)

TARGET = Display3DModel
TEMPLATE = app


SOURCES += main.cpp\
        window.cpp \
    scene.cpp \
    modelloader.cpp \
    scene_gles.cpp

HEADERS  += window.h \
    scene.h \
    modelloader.h \
    scene_gles.h \
    scenebase.h

unix: !macx {
    INCLUDEPATH += third-party/include
    LIBS += -lassimp -Lthird-party/library
}

macx {
    INCLUDEPATH +=  /usr/local/include
    LIBS += /usr/local/lib/libassimp.dylib
}

win32 {
    INCLUDEPATH += "C:/Assimp3/include"
    LIBS += -L"C:/Assimp3/lib/Release" -lassimp
}

OTHER_FILES += ads_fragment.vert ads_fragment.frag \
    es_ads_fragment.frag \
    es_ads_fragment.vert

RESOURCES += \
    resources.qrc
