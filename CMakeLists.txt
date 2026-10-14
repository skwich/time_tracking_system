cmake_minimum_required(VERSION 3.16)

project(time_tracking_system VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(APP_NAME apptime_tracking_system)

find_package(Qt6 6.8 REQUIRED COMPONENTS Quick LinguistTools)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(${APP_NAME}
    src/main.cpp
    src/core/translator.cpp
    src/core/translator.h
)

qt_add_qml_module(${APP_NAME}
    URI time_tracking_system
    VERSION 1.0
    QML_FILES
        src/gui/Main.qml
        src/gui/Login.qml
        src/gui/Locations.qml
)

qt_add_translations(${APP_NAME}
    TS_FILES
        ${CMAKE_CURRENT_SOURCE_DIR}/lang/ru.ts
    SOURCE_TARGETS
        ${APP_NAME}
)

set_target_properties(${APP_NAME} PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(${APP_NAME} PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(TARGETS ${APP_NAME}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
