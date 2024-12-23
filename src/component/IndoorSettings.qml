import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import FluentUI

Rectangle {
    id: indoorSettings
    width: parent.width - 20
    height: 225
    radius: 10
    border.color: "#a0a0a0"
    color: "white"

    Column {
        anchors.fill: parent
        spacing: 10
        padding: 15

        Text {
            text: qsTr("室内环境")
            font.pixelSize: 25
            font.family: smileFont.name
        }

        Text {
            id: simulationData
            text: qsTr("     平面宽/高 [%1] x [%2] ( cm )").arg(sliderWidth.value.toFixed(0)).arg(sliderHeight.value.toFixed(0))
            font.pixelSize: 24
            font.family: smileFont.name
            height: 35
        }

        Rectangle {
            y: 3
            id: rowBackground
            width: parent.width - 30
            height: 110
            radius: 5
            border.width: 2
            border.color: cosFTextColor
            color: "transparent"

            Column {
                anchors.fill: parent
                spacing: 10
                padding: 15

                Row {
                    spacing: 10
                    width: indoorSettings.width - 40

                    Text {
                        y: 3
                        text: qsTr("宽度 X   ")
                        font.pixelSize: 20
                        font.family: smileFont.name
                        width: 40
                        height: 40
                    }

                    FluSlider {
                        id: sliderWidth
                        width: indoorSettings.width - 200
                        height: 30
                        from: 0
                        to: 6400
                        value: 300
                        onValueChanged: {
                            simulationData.text = qsTr("     平面宽/高 [%1] x [%2] ( Unit: cm )").arg(value.toFixed(0)).arg(sliderHeight.value.toFixed(0));
                            simulationCanvas.updateRectangle(value, sliderHeight.value);
                            textFieldWidth.text = value.toFixed(0);
                        }
                    }

                    FluTextBox {
                        id: textFieldWidth
                        text: sliderWidth.value.toFixed(0)
                        font.pixelSize: 16
                        font.family: smileFont.name
                        width: 80
                        height: 30
                        inputMethodHints: Qt.ImhDigitsOnly
                        onEditingFinished: {
                            let newValue = parseInt(text);
                            if (!isNaN(newValue) && newValue >= sliderWidth.from && newValue <= sliderWidth.to) {
                                sliderWidth.value = newValue;
                            } else {
                                text = sliderWidth.value.toFixed(0);
                            }
                        }
                    }
                }

                Row {
                    spacing: 10
                    width: indoorSettings.width - 40

                    Text {
                        y: 3
                        text: qsTr("长度 Y   ")
                        font.pixelSize: 20
                        font.family: smileFont.name
                        width: 40
                        height: 40
                    }

                    FluSlider {
                        id: sliderHeight
                        width: indoorSettings.width - 200
                        height: 30
                        from: 0
                        to: 6400
                        value: 400
                        onValueChanged: {
                            simulationData.text = qsTr("     平面宽/高 [%1] x [%2] ( Unit: cm )").arg(sliderWidth.value.toFixed(0)).arg(value.toFixed(0));
                            simulationCanvas.updateRectangle(sliderWidth.value, value);
                            textFieldHeight.text = value.toFixed(0);
                        }
                    }

                    FluTextBox {
                        id: textFieldHeight
                        text: sliderHeight.value.toFixed(0)
                        font.pixelSize: 16
                        font.family: smileFont.name
                        width: 80
                        height: 30
                        inputMethodHints: Qt.ImhDigitsOnly
                        onEditingFinished: {
                            let newValue = parseInt(text);
                            if (!isNaN(newValue) && newValue >= sliderHeight.from && newValue <= sliderHeight.to) {
                                sliderHeight.value = newValue;
                            } else {
                                text = sliderHeight.value.toFixed(0);
                            }
                        }
                    }
                }
            }
        }
    }
}
