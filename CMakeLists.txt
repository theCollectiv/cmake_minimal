# Die folgenden beiden Angaben muessen in einer CMakeLists.txt am Anfang stehen. Vorher 'include' nicht moeglich
cmake_minimum_required(VERSION 3.21.2)

# ProjektName (dieser CMakeLists.txt-Ebene) festlegen
# VariablenName des ProjectName: This -> ${This}
# FileName des Projects/der spaeteren executable: ProjectLotto -> ProjectLotto.exe
set (This
    ProjectLotto)

project(${This}
    LANGUAGES CXX
    VERSION 1.000)

# Standardparameter setzen (outsourcing zwecks Uebersichtlichkeit)
include (./CMakeDefaults.txt)
# googleTest verfuegbar machen/aktivieren
## Tests ueberhaupt aktivieren
enable_testing()

# keine Ahnug wofuer das ist
## include(GoogleTest)

## Googletest-package einbinden
find_package(GTest REQUIRED)

# Die Sub-CMakeLists.txt der Tests einbinden (um die TestCodes vom eigentlichen Code getrennt zu halten)
add_subdirectory(./tests/test01_proofOfWork)

# Custom Variables
set(QUELLE src/main.cpp)
set(ZIEL finalExecutable)

# Eine Library einbinden (mit .cpp und deren zugehoerigen header)
set(LIB_1 addition)

add_library(                                #Schritt 1: Library/cpp Datei hinzufuegen
    ${LIB_1}                                #Definition: Der Name der Lib wird (zum spaeteren Gebrauch) initialisiert
    STATIC src/addition/addition.cpp        #Die Library/Quelle, die man hinzufuegen moechte /deren Funktionen man braucht
    )

target_include_directories(              #Schritt2: Die zugehoerige .hpp hinzufuegen und mit der Library verbinden
    ${LIB_1}                             #Definition: Das Target wird (zum spaeteren Gebrauch) initialisiert
    PUBLIC include/addition             #(Compiler) hat nur interne Sicht auf das Target; zudem der Pfad, der includiert werden soll (fuehrt zur .hpp Datei)
    )

add_executable(${ZIEL} ${QUELLE})       #Die Executable hinzufuegen. Diese legt den Namen der Ausfuehrungsdatei fest und braucht die .cpp aus der diese Ausfuehrungsdatei erzeugt wird

target_link_libraries(                  # Schritt3: Die hinzuzufuegende Lib in der Datei, in der sie benoetigt wird, bekannt machen
    ${ZIEL}                             # Die Datei angeben, in der die Library/cpp Datei gebraucht wird
    PRIVATE ${LIB_1}                    # Angeben welche Library gebraucht wird
    #    PUBLIC ${LIB_1}                    # Angeben welche Library gebraucht wird
    )
