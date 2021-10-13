# Name des Tests festlegen
#   VariablenName des Tests: This -> ${This}
#   FileName des Tests: Exampletest -> ExampleTest.exe
set (This
    runTest)

# Ort der Tests:
#   VariablenName fuer die Location der zu testenden Datei: Sources -> ${Sources}
#   FileLocation des Testes: ./tests.cpp -> test.cpp
#   Wenn es mehrere Testfiles gibt, muessen die hier geaddet werden
set (Sources
    tests.cpp)

# Link runTests with what we want to test and the GTest and pthread library
add_executable(${This} ${Sources})

# Was man als libraries braucht, um einen Test einzubinden
target_link_libraries(${This} PUBLIC
    GTest::gmock
    GTest::gtest
    GTest::gmock_main
    GTest::gtest_main)
#   Ort der Datei, die durch die Tests geprueft werden soll (Datei zum eigentlichen Programmcode):
#   Ort, der durch den Test zu pruefenden Datei -> ./../../src/main.cpp
#    main.cpp)

# [cmake series] (4) test with Google test | Develop Paper
# https://developpaper.com/cmake-series-4-test-with-google-test/
gtest_discover_tests(${This})

# Vorgehen mit Ctest (das auch fuer googletest geht)/Standard vor gtest_add_tests()
# Tell CMake its a actual UnitTest
# add_test(
#     NAME ${This}
#     COMMAND ${This})



# Locate GTest
# find_package(GTest REQUIRED)
# message(STATUS "GTEST_FOUND='${GTEST_FOUND}'")
# message(STATUS "GTEST_INCLUDE_DIRS='${GTEST_INCLUDE_DIRS}'")
# message(STATUS "GTEST_INCLUDE_DIR='${GTEST_INCLUDE_DIR}'")
# include_directories(${GTEST_INCLUDE_DIRS})
#
#
#
#     add_executable(foo foo.cc)
#     target_link_libraries(foo GTest::gtest GTest::gtest_main)
#

