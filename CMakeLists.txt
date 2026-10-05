cmake_minimum_required(VERSION 3.16)

project(time_tracking_system VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(Qt6 6.8 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(apptime_tracking_system
    src/main.cpp
)

qt_add_qml_module(apptime_tracking_system
    URI time_tracking_system
    VERSION 1.0
    QML_FILES
        src/GUI/Login.qml
)

set_target_properties(apptime_tracking_system PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(apptime_tracking_system
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS apptime_tracking_system
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
