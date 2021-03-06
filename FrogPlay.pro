######################################################################
# Automatically generated by qmake (3.0) ?? ?? 5 10:09:42 2017
######################################################################
TEMPLATE = app
TARGET = FrogPlay
CONFIG(x64){
TARGET = $$TARGET"64"
}

include($$(SOUIPATH)/demo_com.pri)
INCLUDEPATH += . \
               $(SOUIPATH)/third-part \
               $(SOUIPATH)/third-part/stdint \
			   
QMAKE_LIBDIR += ./vlc/lib

QMAKE_LFLAGS_RELEASE += /SAFESEH:NO
QMAKE_LFLAGS_DEBUG += /SAFESEH:NO


CONFIG(debug,debug|release){
	LIBS += utilitiesd.lib souid.lib	
}
else{
	LIBS += utilities.lib soui.lib
}

LIBS += libvlc.lib libvlccore.lib

PRECOMPILED_HEADER = stdafx.h


# Input
HEADERS += AVPlayer.h \
           FilesHelp.h \
           MainDlg.h \
           PlayListAdapter.h \
           RealWndDlg.h \
           RealWndDlg_URL.h \
           SouiRealWndHandler.h \
           TipWnd.h \
           taskbarlist3-i.h \
           $(SOUIPATH)/controls.extend/SRadioBox2.h \
           resource.h \
           res/resource.h
           
SOURCES += AVPlayer.cpp \
           FilesHelp.cpp \
           FrogPlay.cpp \
           MainDlg.cpp \
           RealWndDlg.cpp \
           SouiRealWndHandler.cpp \
           TipWnd.cpp \
           $(SOUIPATH)/controls.extend/SRadioBox2.cpp \

RC_FILE += FrogPlay.rc
