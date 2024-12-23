import QtQuick 2.15
import QtQuick.Controls 2.15
import FluentUI

Rectangle {
    id: lightSettings
    width: parent.width - 20
    height: 60
    radius: 10
    border.color: "#a0a0a0"
    color: "white"

    property alias lightSources: lightList.model
    Component.onCompleted: {
        simulationCanvas.lightSources = lightSources;
    }

    function updateHeight() {
        var totalHeight = 60;
        for (var i = 0; i < lightSources.count; i++) {
            var item = lightSources.get(i);
            totalHeight += item.expanded ? 190 : 60;
        }
        lightSettings.height = totalHeight;
    }

    Column {
        anchors.fill: parent
        spacing: 10
        padding: 15

        Row {
            spacing: 10
            width: parent.width

            Text {
                text: qsTr("光源设置")
                font.pixelSize: 25
                font.family: smileFont.name
            }

            FluButton {
                id: addButton_Light
                text: qsTr("+")
                font.pixelSize: 18
                onClicked: {
                    if (lightSources.count < initialLayout.maxLight) {
                        //addButton_Light.enabled = true
                        lightSources.append({
                            "name": "Light-T8-" + (lightSources.count + 1),
                            "intensity": 50,
                            "positionX": 250,
                            "positionY": 200,
                            "expanded": false
                        });
                        updateHeight();
                        if (lightSources.count === initialLayout.maxLight) {
                            addButton_Light.enabled = false
                        }
                    } else {
                        addButton_Light.enabled = false
                    }
                }
            }
        }

        ListView {
            id: lightList
            width: parent.width
            height: parent.height
            spacing: 10
            model: ListModel { }
            delegate: Rectangle {
                id: lightItem
                width: parent.width - 30
                height: model.expanded ? 180 : 50
                radius: 5
                border.width: 2
                border.color: cosSTextColor
                color: "transparent"

                Column {
                    anchors.fill: parent
                    spacing: 10
                    padding: 10

                    Row {
                        spacing: 10
                        width: parent.width - 20

                        FluButton {
                            text: qsTr("-")
                            font.pixelSize: 18
                            onClicked: {
                                if (lightSources.count === initialLayout.maxLight) {
                                    addButton_Light.enabled = true
                                }

                                if (lightSources.get(index)) {
                                    lightSources.remove(index);
                                    updateHeight();
                                    for (var i = 0; i < lightSources.count; i++) {
                                        var lightData = lightSources.get(i);
                                        lightData.name = "Light-T8-" + (i + 1);
                                        lightSources.set(i, lightData);
                                    }
                                }
                            }
                        }

                        FluButton {
                            text: model.expanded ? qsTr("CLOSE  ⮃") : qsTr("OPEN   ⮃")
                            font.family: smileFont.name
                            font.pixelSize: 16
                            onClicked: {
                                if (lightSources.get(index)) {
                                    lightSources.set(index, {
                                        name: model.name,
                                        intensity: model.intensity,
                                        positionX: model.positionX,
                                        positionY: model.positionY,
                                        expanded: !model.expanded
                                    });
                                    updateHeight();
                                }
                            }
                        }

                        Text {
                            x: 30
                            y: 1
                            text: model.name
                            font.pixelSize: 23
                            font.family: smileFont.name
                        }
                    }

                    Column {
                        visible: model.expanded
                        spacing: 10
                        width: parent.width
                        y: 10

                        Row {
                            spacing: 10
                            width: parent.width

                            Text {
                                y: 5
                                text: qsTr("照度 Lux")
                                font.pixelSize: 18
                                font.family: smileFont.name
                            }

                            FluSlider {
                                id: intensitySlider
                                width: parent.width - 180
                                from: 0
                                to: 100
                                value: model.intensity

                                onValueChanged: {
                                    let lightData = lightSources.get(index);
                                    if (lightData) {
                                        lightData.intensity = value;
                                        lightSources.set(index, lightData);
                                    }
                                }
                            }

                            FluTextBox {
                                text: intensitySlider.value.toFixed(0)
                                font.pixelSize: 16
                                font.family: smileFont.name
                                width: 80
                                height: 30
                                inputMethodHints: Qt.ImhDigitsOnly

                                onEditingFinished: {
                                    let newValue = parseInt(text);
                                    if (!isNaN(newValue) && newValue >= intensitySlider.from && newValue <= intensitySlider.to) {
                                        intensitySlider.value = newValue;
                                    } else {
                                        text = intensitySlider.value.toFixed(0);
                                    }
                                }

                                Keys.onReturnPressed: {
                                    let newValue = parseInt(text);
                                    if (!isNaN(newValue) && newValue >= intensitySlider.from && newValue <= intensitySlider.to) {
                                        intensitySlider.value = newValue;
                                    } else {
                                        text = intensitySlider.value.toFixed(0);
                                    }
                                }
                            }
                        }

                        Row {
                            spacing: 10
                            width: parent.width

                            Text {
                                y: 5
                                text: qsTr("位置 X    ")
                                font.pixelSize: 18
                                font.family: smileFont.name
                            }

                            FluSlider {
                                id: positionXSlider
                                width: parent.width - 180
                                from: 0
                                to: 6400
                                value: model.positionX

                                onValueChanged: {
                                    let lightData = lightSources.get(index);
                                    if (lightData) {
                                        lightData.positionX = value;
                                        lightSources.set(index, lightData);
                                    }
                                }
                            }

                            FluTextBox {
                                text: positionXSlider.value.toFixed(0)
                                font.pixelSize: 16
                                font.family: smileFont.name
                                width: 80
                                height: 30
                                inputMethodHints: Qt.ImhDigitsOnly

                                onEditingFinished: {
                                    let newValue = parseInt(text);
                                    if (!isNaN(newValue) && newValue >= positionXSlider.from && newValue <= positionXSlider.to) {
                                        positionXSlider.value = newValue;
                                    } else {
                                        text = positionXSlider.value.toFixed(0);
                                    }
                                }

                                Keys.onReturnPressed: {
                                    let newValue = parseInt(text);
                                    if (!isNaN(newValue) && newValue >= positionXSlider.from && newValue <= positionXSlider.to) {
                                        positionXSlider.value = newValue;
                                    } else {
                                        text = positionXSlider.value.toFixed(0);
                                    }
                                }
                            }
                        }

                        Row {
                            spacing: 10
                            width: parent.width

                            Text {
                                y: 5
                                text: qsTr("位置 Y    ")
                                font.pixelSize: 18
                                font.family: smileFont.name
                            }

                            FluSlider {
                                id: positionYSlider
                                width: parent.width - 180
                                from: 0
                                to: 6400
                                value: model.positionY

                                onValueChanged: {
                                    let lightData = lightSources.get(index);
                                    if (lightData) {
                                        lightData.positionY = value;
                                        lightSources.set(index, lightData);
                                    }
                                }
                            }

                            FluTextBox {
                                id: positionYTextBox
                                text: positionYSlider.value.toFixed(0)
                                font.pixelSize: 16
                                font.family: smileFont.name
                                width: 80
                                height: 30
                                inputMethodHints: Qt.ImhDigitsOnly

                                onEditingFinished: {
                                    let newValue = parseInt(text);
                                    if (!isNaN(newValue) && newValue >= positionYSlider.from && newValue <= positionYSlider.to) {
                                        positionYSlider.value = newValue;
                                    } else {
                                        text = positionYSlider.value.toFixed(0);
                                    }
                                }

                                Keys.onReturnPressed: {
                                    let newValue = parseInt(text);
                                    if (!isNaN(newValue) && newValue >= positionYSlider.from && newValue <= positionYSlider.to) {
                                        positionYSlider.value = newValue;
                                    } else {
                                        text = positionYSlider.value.toFixed(0);
                                    }
                                }
                            }

                        }
                    }
                }
            }
        }
    }
    Connections {
        target: initialLayout
        function onMaxLightChanged() {
            addButton_Light.enabled = true
        }
    }
}
