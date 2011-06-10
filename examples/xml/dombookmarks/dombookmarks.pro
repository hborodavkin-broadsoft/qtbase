HEADERS       = mainwindow.h \
                xbeltree.h
SOURCES       = main.cpp \
                mainwindow.cpp \
                xbeltree.cpp
QT           += xml widgets

# install
target.path = $$[QT_INSTALL_EXAMPLES]/qtbase/xml/dombookmarks
sources.files = $$SOURCES $$HEADERS $$RESOURCES $$FORMS dombookmarks.pro *.xbel
sources.path = $$[QT_INSTALL_EXAMPLES]/qtbase/xml/dombookmarks
INSTALLS += target sources

symbian: CONFIG += qt_example

symbian: {
    CONFIG += qt_example
    addFiles.sources = frank.xbel jennifer.xbel
    addFiles.path = files
    DEPLOYMENT += addFiles
}

wince*: {
    addFiles.files = frank.xbel jennifer.xbel
    addFiles.path = "\\My Documents"
    DEPLOYMENT += addFiles
}
maemo5: CONFIG += qt_example

