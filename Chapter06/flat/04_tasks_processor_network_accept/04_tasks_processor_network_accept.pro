if (!include(../../../config.txt)) {
    error("Failed to open config.txt")
}

SOURCES += main.cpp

QMAKE_CXXFLAGS += $$CPP11FLAG
!msvc {
    LIBS += -lboost_system -lboost_thread
    win32:LIBS += -lws2_32 -lwsock32
}
