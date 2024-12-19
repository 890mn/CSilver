import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import FluentUI 1.0

Item {
    signal startSimulation()

    property bool horOn: false
    property bool verOn: false

    Column {
        id: mainState
        anchors.left: parent.left
        anchors.leftMargin: 10
        spacing: 15
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 100 // 调整竖向 offset

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
                title: qsTr("Setting")
                size: 400 // Height

                Column {
                    width: parent.width
                    height: parent.height

                    spacing: 10
                    padding: 10

                    FluText {
                        y: 10
                        text: qsTr("仿真环境设置")
                        font.family: smileFont.name
                        font.pixelSize: 23
                    }

                    Row {
                        width: parent.width
                        //height: parent.height

                        spacing: 20
                        padding: 10

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
                        //height: parent.height

                        spacing: 20
                        padding: 10

                        FluText {
                            text: qsTr("- 光源数量限制 [Default: 8]")
                            font.family: smileFont.name
                            font.pixelSize: 21
                        }

                        FluTextBox {
                            //text: intensitySlider.value.toFixed(0)
                            font.pixelSize: 16
                            font.family: smileFont.name
                            //width: 80
                            //height: 30
                            inputMethodHints: Qt.ImhDigitsOnly
                            onEditingFinished: {
                                let newValue = parseInt(text);
                                if (!isNaN(newValue) && newValue >= 0 && newValue <= 32) {
                                    lightSettings.maxLights = newValue;
                                } else {
                                    text = lightSettings.maxLights;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // 下方区域，右边内容
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
