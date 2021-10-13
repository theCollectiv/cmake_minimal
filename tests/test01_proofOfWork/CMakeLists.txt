#   determine the Name of the test
#   name of the test-variable: This -> ${This}
#   FileName of the test: runTest -> runTest.exe
set (This
    runTest)

#   location of the test(s)
#   variable_name for the location of the file including the testcases
#   FileLocation of the test(s; can be multiple): ./tests.cpp -> test.cpp
set (Sources
    tests.cpp)

# Linking runTests with what we want to test and the GTest
add_executable(${This} ${Sources})

# libraries, which the test executable needs to work
target_link_libraries(${This} PUBLIC
    # the googletests are needed
    GTest::gmock
    GTest::gtest
    GTest::gmock_main
    GTest::gtest_main
    # the libraries of the project, that we want to test
    addition)
# Adding the tests to googletest
# [cmake series] (4) test with Google test | Develop Paper
# https://developpaper.com/cmake-series-4-test-with-google-test/
gtest_discover_tests(${This})

