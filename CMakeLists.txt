cmake_minimum_required(VERSION 3.20)

project(CSDL-FluentUI VERSION 1.0)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core)

add_subdirectory(FluentUI)
add_subdirectory(src)

qt_add_resources(${PROJECT_NAME}
    PREFIX
        "/"
    FILES
        src/App.qml
        src/main.qml
        src/assets/BrushGrunge.ttf
        src/assets/SmileySans-Oblique.ttf
        src/assets/back.png
        src/assets/logo.ico
        src/layouts/InitialLayout.qml
        src/layouts/SimulationLayout.qml
        src/sections/TopSection.qml
        src/sections/RightSection.qml
        src/sections/BottomSection.qml
        src/components/SimulationCanvas.qml
        src/components/AddSettings.qml
        src/components/IndoorSettings.qml
        src/components/LightSettings.qml
        src/components/Others.qml
)

qt_add_resources(qml_resources qml.qrc)
