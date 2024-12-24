import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import FluentUI 1.0
import "../section"

Item {
    signal returnToHome()

    Column {
        id: simulationLayout
        anchors.fill: parent

        TopSection {
            id: topSection
            width: parent.width
            height: parent.height * 0.9
            anchors.horizontalCenter: parent.horizontalCenter
        }

        BottomSection {
            id: bottomSection
            width: parent.width
            height: parent.height * 0.1
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
