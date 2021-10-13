# Got to be on top (i.e. else no 'include' possible
cmake_minimum_required(VERSION 3.21.2)

# projektname
set (This
    MainProject_ToTest)

project(${This}
    LANGUAGES CXX
    VERSION 1.000)

# set standardparameter
include (./CMakeDefaults.txt)
# make googleTest available
## make testing avialabe (in general)
enable_testing()

## make specific googleTest availabe and integrate the package
find_package(GTest REQUIRED)

# keeping testcode and acutal project testcode separated by own test-dir and own CMakeList.txt. Integrating the sub-CMakeLists.txt in the acutal CMakeLists.txt
add_subdirectory(./tests/test01_proofOfWork)

# Custom Variables
set(M_source src/main.cpp)
set(M_target finalExecutable)

# integrate a librariy (.cpp + its header)
set(LIB_1 addition)

add_library(                                # Step 1: adding the lib/cpp
    ${LIB_1}                                # Definition: Initialising the Name of the lib (to be able to refernce it later on)
    STATIC src/addition/addition.cpp        # Library/Source, you want to add/use
    )

target_include_directories(              # Step2: adding the .hpp which the .cpp belongs to
    ${LIB_1}                             # Definition: Das Target wird (zum spaeteren Gebrauch) initialisiert
    PUBLIC include/addition              # Path to the specific .hpp; deciding if the compiler just got intern view of the target
    )

add_executable(${M_target} ${M_source})       #Adding the executable and defininig its name

target_link_libraries(                  # Step 3: announcing the added lib to the file, in which the lib is required
    ${M_target}                         # the file which requires the lib
    PRIVATE ${LIB_1}                    # the lib which is required by the file
    )
