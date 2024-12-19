import QtQuick 2.15
import QtQuick.Controls 2.15

ScrollView {
    id: rightSection
    clip: true
    ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

    ScrollBar.vertical.policy: initialLayout.verOn ? ScrollBar.AlwaysOn : ScrollBar.AlwaysOff

    Column {
        id: rightContent
        width: rightSection.width
        spacing: 10

        IndoorEnvironmentModule {}

        LightSettings {}

        AddSettings {}

        Others {}
    }
}
