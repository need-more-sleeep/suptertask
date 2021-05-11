cmake_minimum_required(VERSION 3.4)

include("cmake/HunterGate.cmake")
HunterGate(
        URL "https://github.com/cpp-pm/hunter/archive/v0.23.251.tar.gz"
        SHA1 "5659b15dc0884d4b03dbd95710e6a1fa0fc3258d"
)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

option(BUILD_EXAMPLES "Build examples" ON)
option(BUILD_TESTS "Build tests" ON)

project(log)
set(LOG_VERSION_MAJOR 0)
set(LOG_VERSION_MINOR 1)
set(LOG_VERSION_PATCH 0)
set(LOG_VERSION_TWEAK 0)
set(LOG_VERSION
        ${LOG_VERSION_MAJOR}.${LOG_VERSION_MINOR}.${LOG_VERSION_PATCH}.${LOG_VERSION_TWEAK})
set(LOG_VERSION_STRING "v${LOG_VERSION}")

hunter_add_package(GTest)
find_package(GTest CONFIG REQUIRED)

add_library(log STATIC ${CMAKE_CURRENT_SOURCE_DIR}/sources/log.cpp)

target_include_directories(log PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>
        )

if(BUILD_EXAMPLES)
    file(GLOB EXAMPLE_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/examples/*.cpp")
    foreach(EXAMPLE_SOURCE ${EXAMPLE_SOURCES})
        get_filename_component(EXAMPLE_NAME ${EXAMPLE_SOURCE} NAME_WE)
        add_executable(${EXAMPLE_NAME} ${EXAMPLE_SOURCE})
        target_link_libraries(${EXAMPLE_NAME} log)
        install(TARGETS ${EXAMPLE_NAME}
                RUNTIME DESTINATION bin
                )
    endforeach(EXAMPLE_SOURCE ${EXAMPLE_SOURCES})
endif()

install(TARGETS log
        EXPORT log-config
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        )

install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/ DESTINATION include)
install(EXPORT log-config DESTINATION cmake)

if(BUILD_TESTS)
    enable_testing()
    file(GLOB ${PROJECT_NAME}_TEST_SOURCES tests/*.cpp)
    add_executable(check ${${PROJECT_NAME}_TEST_SOURCES})
    target_link_libraries(check ${PROJECT_NAME} GTest::gtest_main)
    add_test(NAME check COMMAND check)
endif()

include(CPackConfig.cmake)