import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import FluentUI 1.0

Item {
    id: initalLayout
    signal startSimulation()

    property bool horOn: false
    property bool verOn: false

    property int maxLight: 8
    property int maxSensor: 8

    Column {
        id: mainState
        anchors.left: parent.left
        anchors.leftMargin: 10
        spacing: 15
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 100

        opacity: 1

        FluText {
            text: qsTr("仿真 · 照度模拟")
            color: cosFTextColor
            font.pixelSize: mainWindow.height / 11
            font.family: smileFont.name
        }

        Row {
            FluText {
                text: qsTr("调控算法验证平台 |")
                color: globalTextColor
                font.pixelSize: mainWindow.height / 18
                font.family: smileFont.name
            }
            FluText {
                anchors.bottom: parent.bottom
                text: qsTr(" Powered By Qt6")
                color: globalTextColor
                font.pixelSize: mainWindow.height / 22
                font.family: smileFont.name
            }
        }

        Row {
            id: buttonRow
            spacing: 20
            baselineOffset: 20
            FluFilledButton {
                id: startSimButton
                text: qsTr("开始仿真 / Start")
                font.pixelSize: mainWindow.height / 22
                font.family: smileFont.name
                implicitWidth: font.pixelSize * text.length * 0.65
                implicitHeight: font.pixelSize * 1.7

                onClicked: {
                    startSimulation()
                }
            }
            FluFilledButton {
                text: qsTr("环境设置 / Setting")
                font.pixelSize: mainWindow.height / 22
                font.family: smileFont.name
                implicitWidth: font.pixelSize * text.length * 0.6
                implicitHeight: font.pixelSize * 1.7
                onClicked: {
                    sheet.open(FluSheetType.Top)
                }
            }
            FluSheet {
                id:sheet
                size: 450 // Height

                Column {
                    width: parent.width
                    height: parent.height

                    spacing: 10
                    padding: 10

                    // Global
                    FluText {
                        y: 10
                        text: qsTr("软件环境设置")
                        font.family: smileFont.name
                        font.pixelSize: 23
                    }

                    Row {
                        width: parent.width

                        spacing: 20
                        padding: 5
                        x: 15

                        FluText {
                            text: qsTr("- CSilver 软件最小宽度 / 长度 [不建议小于默认数值]")
                            font.family: smileFont.name
                            font.pixelSize: 21
                        }

                        FluTextBox {
                            text: mainWindow.minimumWidth.toFixed(0)
                            font.pixelSize: 16
                            font.family: smileFont.name
                            width: 80
                            height: 30
                            y: -2
                            inputMethodHints: Qt.ImhDigitsOnly

                            onEditingFinished: {
                                let newValue = parseInt(text);
                                if (!isNaN(newValue) && newValue > 0 && newValue < mainWindow.maximumWidth) {
                                    mainWindow.minimumWidth = newValue;
                                } else {
                                    text = mainWindow.minimumWidth;
                                }
                            }

                            Keys.onReturnPressed: {
                                let newValue = parseInt(text);
                                if (!isNaN(newValue) && newValue > 0 && newValue < mainWindow.maximumWidth) {
                                    mainWindow.minimumWidth = newValue;
                                } else {
                                    text = mainWindow.minimumWidth;
                                }
                            }
                        }

                        FluText {
                            text: qsTr("X")
                            font.family: smileFont.name
                            font.pixelSize: 21
                        }

                        FluTextBox {
                            text: mainWindow.minimumHeight.toFixed(0)
                            font.pixelSize: 16
                            font.family: smileFont.name
                            width: 80
                            height: 30
                            y: -2
                            inputMethodHints: Qt.ImhDigitsOnly

                            onEditingFinished: {
                                let newValue = parseInt(text);
                                if (!isNaN(newValue) && newValue > 0 && newValue <= mainWindow.maximumHeight) {
                                    mainWindow.minimumHeight = newValue;
                                } else {
                                    text = mainWindow.minimumHeight;
                                }
                            }

                            Keys.onReturnPressed: {
                                let newValue = parseInt(text);
                                if (!isNaN(newValue) && newValue > 0 && newValue <= mainWindow.maximumHeight) {
                                    mainWindow.minimumHeight = newValue;
                                } else {
                                    text = mainWindow.minimumHeight;
                                }
                            }
                        }
                    }

                    Row {
                        width: parent.width

                        spacing: 20
                        padding: 5
                        x: 15

                        FluText {
                            text: qsTr("- 坐标轴 / 室内设定 颜色设置")
                            font.family: smileFont.name
                            font.pixelSize: 21
                        }

                        FluColorPicker{
                            onAccepted: {
                                mainWindow.cosFTextColor = current
                            }
                        }
                    }

                    Row {
                        width: parent.width

                        spacing: 20
                        padding: 5
                        x: 15

                        FluText {
                            text: qsTr("- 光源 颜色设置")
                            font.family: smileFont.name
                            font.pixelSize: 21
                        }

                        FluColorPicker{
                            onAccepted: {
                                mainWindow.cosSTextColor = current
                            }
                        }
                    }

                    Row {
                        width: parent.width

                        spacing: 20
                        padding: 5
                        x: 15

                        FluText {
                            text: qsTr("- 传感 颜色设置")
                            font.family: smileFont.name
                            font.pixelSize: 21
                        }

                        FluColorPicker{
                            onAccepted: {
                                mainWindow.cosTTextColor = current
                            }
                        }
                    }

                    // Simulation
                    FluText {
                        y: 10
                        text: qsTr("仿真环境设置")
                        font.family: smileFont.name
                        font.pixelSize: 23
                    }

                    Row {
                        width: parent.width

                        spacing: 20
                        padding: 5
                        x: 15

                        FluText {
                            text: qsTr("- 是否开启竖向滑块？[建议：在多光源或传感存在时打开，默认关闭]")
                            font.family: smileFont.name
                            font.pixelSize: 21
                        }

                        FluToggleSwitch {
                            y: 4
                            onClicked: {
                                verOn = !verOn
                            }
                        }
                    }

                    Row {
                        width: parent.width

                        spacing: 20
                        padding: 5
                        x: 15

                        FluText {
                            text: qsTr("- 光源数量限制 [Default: 8] [注:不建议新设定数值小于原数量，该行为将引发未定义事件]")
                            font.family: smileFont.name
                            font.pixelSize: 21
                        }

                        FluTextBox {
                            text: maxLight.toFixed(0)
                            font.pixelSize: 16
                            font.family: smileFont.name
                            width: 70
                            height: 30
                            y: -2
                            inputMethodHints: Qt.ImhDigitsOnly

                            onEditingFinished: {
                                let newValue = parseInt(text);
                                if (!isNaN(newValue) && newValue >= 0 && newValue <= 32) {
                                    maxLight = newValue;
                                } else {
                                    text = maxLight;
                                }
                            }

                            Keys.onReturnPressed: {
                                let newValue = parseInt(text);
                                if (!isNaN(newValue) && newValue >= 0 && newValue <= 32) {
                                    maxLight = newValue;
                                } else {
                                    text = maxLight;
                                }
                            }
                        }
                    }

                    Row {
                        width: parent.width

                        spacing: 20
                        padding: 5
                        x: 15

                        FluText {
                            text: qsTr("- 传感数量限制 [Default: 8] [注:不建议新设定数值小于原数量，该行为将引发未定义事件]")
                            font.family: smileFont.name
                            font.pixelSize: 21
                        }

                        FluTextBox {
                            text: maxSensor.toFixed(0)
                            font.pixelSize: 16
                            font.family: smileFont.name
                            width: 70
                            height: 30
                            y: -2
                            inputMethodHints: Qt.ImhDigitsOnly

                            onEditingFinished: {
                                let newValue = parseInt(text);
                                if (!isNaN(newValue) && newValue >= 0 && newValue <= 32) {
                                    maxSensor = newValue;
                                } else {
                                    text = maxSensor;
                                }
                            }

                            Keys.onReturnPressed: {
                                let newValue = parseInt(text);
                                if (!isNaN(newValue) && newValue >= 0 && newValue <= 32) {
                                    maxSensor = newValue;
                                } else {
                                    text = maxSensor;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Row {
        anchors{
            bottom: parent.bottom
            bottomMargin: 10
            right: parent.right
        }
        FluText{
            font.pixelSize: mainWindow.height / 30
            color: globalTextColor
            font.family: smileFont.name
            font.bold: true
            text: qsTr("愿你在仿真的世界沐浴五束阳光 |")
        }
        FluText{
            font.pixelSize: mainWindow.height / 30
            font.family: smileFont.name
            font.bold: true
            text: " CSDLighting-Silver.0.1    "
            color: cosFTextColor
        }
    }
}
