import QtQuick 2.15

QtObject {
    id: utils

    function updateHeight(lightSources) {
        var totalHeight = 60;
        for (var i = 0; i < lightSources.count; i++) {
            var item = lightSources.get(i);
            totalHeight += item.expanded ? 190 : 60;
        }
        return totalHeight;
    }
}
