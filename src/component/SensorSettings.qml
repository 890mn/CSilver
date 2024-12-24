import QtQuick 2.15
import QtQuick.Controls 2.15
import FluentUI

Rectangle {
    id: sensorSettings
    width: parent.width - 20
    height: 60
    radius: 10
    border.color: "#a0a0a0"
    color: "white"

    property alias sensorListModel: sensorListView.model

    Component.onCompleted: {
        simulationCanvas.sensorSources = sensorListModel; // 绑定外部模型
    }

    function updateHeight() {
        var totalHeight = 60;  // 初始高度

        for (var i = 0; i < sensorListModel.count; i++) {
            var item = sensorListModel.get(i);
            totalHeight += item.expanded ? 150 : 60; // 展开状态光源占 150 高度，折叠状态占 60 高度
        }

        sensorSettings.height = totalHeight;
    }

    Column {
        anchors.fill: parent
        spacing: 10
        padding: 15

        Row {
            spacing: 10
            width: parent.width

            Text {
                text: qsTr("传感器设置")
                font.pixelSize: 25
                font.family: smileFont.name
            }

            FluButton {
                id: addButton_Sensor
                text: qsTr("+")
                font.pixelSize: 18
                onClicked: {
                    if (sensorListModel.count < initialLayout.maxSensor) {
                        sensorListModel.append({
                            "name": "Sensor-" + (sensorListModel.count + 1),
                            "positionX": 250,
                            "positionY": 200,
                            "expanded": false // 默认折叠
                        });
                        updateHeight();
                        if (sensorListModel.count === initialLayout.maxSensor) {
                            addButton_Sensor.enabled = false
                        }
                    } else {
                        addButton_Sensor.enabled = false
                    }
                }
            }
        }

        ListView {
            id: sensorListView
            width: parent.width
            height: parent.height
            spacing: 10
            model: ListModel { } // 初始化空模型
            delegate: Rectangle {
                id: sensorItem
                width: parent.width - 30
                height: model.expanded ? 140 : 50
                radius: 5
                border.width: 2
                border.color: cosTTextColor
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
                                if (sensorListModel.count === initialLayout.maxSensor) {
                                    addButton_Sensor.enabled = true
                                }

                                if (sensorListModel.get(index)) {
                                    sensorListModel.remove(index);
                                    updateHeight();

                                    for (var i = 0; i < sensorListModel.count; i++) {
                                        var sensorData = sensorListModel.get(i);
                                        sensorData.name = "Sensor-" + (i + 1);
                                        sensorListModel.set(i, sensorData);
                                    }
                                }
                            }
                        }

                        FluButton {
                            text: model.expanded ? qsTr("CLOSE  ⮃") : qsTr("OPEN   ⮃")
                            font.family: smileFont.name
                            font.pixelSize: 16
                            onClicked: {
                                if (sensorListModel.get(index)) {
                                    sensorListModel.set(index, {
                                        name: model.name,
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
                                    let sensorData = sensorListModel.get(index);
                                    if (sensorData) {
                                        sensorData.positionX = value;
                                        sensorListModel.set(index, {
                                            name: sensorData.name,
                                            positionX: sensorData.positionX,
                                            positionY: sensorData.positionY,
                                            expanded: sensorData.expanded
                                        });
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
                                    let sensorData = sensorListModel.get(index);
                                    if (sensorData) {
                                        sensorData.positionY = value;
                                        sensorListModel.set(index, {
                                            name: sensorData.name,
                                            positionX: sensorData.positionX,
                                            positionY: sensorData.positionY,
                                            expanded: sensorData.expanded
                                        });
                                    }
                                }
                            }

                            FluTextBox {
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
        function onMaxSensorChanged() {
            addButton_Sensor.enabled = true
        }
    }
}
