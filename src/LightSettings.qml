import QtQuick 2.15
import QtQuick.Controls 2.15
import FluentUI

Rectangle {
    id: lightSettings
    width: parent.width - 20
    height: 100  // 初始高度设置为较小的值
    radius: 10
    border.color: "#a0a0a0"
    color: "white"

    property alias lightSources: lightList.model
    Component.onCompleted: {
        simulationCanvas.lightSources = lightSources; // 绑定外部模型
    }

    // 计算外框高度的函数
    function updateHeight() {
        var totalHeight = 100;  // 初始高度

        // 计算每个光源的高度
        for (var i = 0; i < lightSources.count; i++) {
            var item = lightSources.get(i);
            totalHeight += item.expanded ? 180 : 50; // 展开状态光源占 180 高度，折叠状态占 50 高度
        }

        // 设置新的高度（保持最小为 100，避免高度小于初始值）
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
                text: qsTr("+")
                font.pixelSize: 18
                onClicked: {
                    // 添加新光源时，默认是折叠状态
                    lightSources.append({
                        "name": "Light-T8-" + (lightSources.count + 1),
                        "intensity": 50,
                        "positionX": 250,
                        "positionY": 200,
                        "expanded": false // 默认折叠
                    });

                    // 更新外框高度
                    updateHeight();
                }
            }
        }

        ListView {
            id: lightList
            width: parent.width
            height: parent.height
            spacing: 10
            model: ListModel { } // 初始化空模型
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
                                // 删除光源前，重新调整光源的序号
                                if (lightSources.get(index)) {
                                    // 删除当前项
                                    lightSources.remove(index);
                                    updateHeight(); // 删除光源后更新外框高度

                                    // 调整序号
                                    for (var i = 0; i < lightSources.count; i++) {
                                        var lightData = lightSources.get(i);
                                        lightData.name = "Light-T8-" + (i + 1); // 重新设置序号
                                        lightSources.set(i, lightData); // 更新模型数据
                                    }
                                }
                            }
                        }

                        FluButton {
                            text: model.expanded ? qsTr("CLOSE  ⮃") : qsTr("OPEN   ⮃")
                            font.family: smileFont.name
                            font.pixelSize: 16
                            onClicked: {
                                // 更新展开状态
                                if (lightSources.get(index)) {
                                    lightSources.set(index, {
                                        name: model.name,
                                        intensity: model.intensity,
                                        positionX: model.positionX,
                                        positionY: model.positionY,
                                        expanded: !model.expanded
                                    });
                                    updateHeight(); // 更新外框高度
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

                    // Expanded content: 使用 Column 来排列属性
                    Column {
                        visible: model.expanded
                        spacing: 10
                        width: parent.width
                        y: 10

                        // 强度调整
                        Row {
                            spacing: 10
                            width: parent.width

                            Text {
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
                                        lightSources.set(index, {
                                            name: lightData.name,
                                            intensity: lightData.intensity,
                                            positionX: lightData.positionX,
                                            positionY: lightData.positionY,
                                            expanded: lightData.expanded
                                        });
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
                                        text = intensitySlider.value.toFixed(0); // 恢复合法值
                                    }
                                }
                            }
                        }

                        // 位置 X 调整
                        Row {
                            spacing: 10
                            width: parent.width

                            Text {
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
                                        lightSources.set(index, {
                                            name: lightData.name,
                                            intensity: lightData.intensity,
                                            positionX: lightData.positionX,
                                            positionY: lightData.positionY,
                                            expanded: lightData.expanded
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
                                        text = positionXSlider.value.toFixed(0); // 恢复合法值
                                    }
                                }
                            }
                        }

                        // 位置 Y 调整
                        Row {
                            spacing: 10
                            width: parent.width

                            Text {
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
                                        lightSources.set(index, {
                                            name: lightData.name,
                                            intensity: lightData.intensity,
                                            positionX: lightData.positionX,
                                            positionY: lightData.positionY,
                                            expanded: lightData.expanded
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
                                        text = positionYSlider.value.toFixed(0); // 恢复合法值
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
