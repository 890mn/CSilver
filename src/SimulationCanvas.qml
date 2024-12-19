import QtQuick 2.15
import FluentUI

Rectangle {
    id: simulationCanvas
    radius: 10
    border.color: "#a0a0a0"
    border.width: 2
    color: "white"

    property real maxX: 600 // 最大 X 轴刻度
    property real maxY: 400 // 最大 Y 轴刻度

    property real rectWidth: 500 // 矩形宽度
    property real rectHeight: 300 // 矩形高度

    property var lightSources: ListModel {
        ListElement { name: "Light-T8-1"; positionX: 100; positionY: 150; intensity: 50 }
    }

    property var addSources: ListModel {
        ListElement { name: "Sensor-1"; positionX: 100; positionY: 150}
    }

    onRectWidthChanged: adjustAxes()
    onRectHeightChanged: adjustAxes()

    function updateRectangle(width, height) {
        rectWidth = width;
        rectHeight = height;
    }

    function adjustAxes() {
        maxX = Math.ceil(rectWidth / 10) * 10 + 50; // 保留空间
        maxY = Math.ceil(rectHeight / 10) * 10 + 50; // 保留空间
        canvas.requestPaint();
    }

    Canvas {
        id: canvas
        anchors.fill: parent

        onPaint: {
            var ctx = getContext("2d");
            ctx.clearRect(0, 0, width, height); // 清空画布

            // 坐标轴设置
            const padding = 60; // 坐标轴边距
            const axisWidth = width - 2 * padding;
            const axisHeight = height - 2 * padding;

            // 绘制 X 轴和 Y 轴
            ctx.strokeStyle = "#000000";
            ctx.lineWidth = 2;

            // Y 轴
            ctx.beginPath();
            ctx.moveTo(padding, padding);
            ctx.lineTo(padding, height - padding);
            ctx.stroke();

            // X 轴
            ctx.beginPath();
            ctx.moveTo(padding, height - padding);
            ctx.lineTo(width - padding, height - padding);
            ctx.stroke();

            // 绘制刻度
            ctx.fillStyle = "#000000";
            ctx.font = "12px Arial";

            // X 轴刻度
            const xStep = maxX / 10; // 分为 10 个刻度
            for (let i = 0; i <= maxX; i += xStep) {
                const x = padding + (i / maxX) * axisWidth;
                ctx.beginPath();
                ctx.moveTo(x, height - padding);
                ctx.lineTo(x, height - padding + 5);
                ctx.stroke();
                ctx.fillText(i.toFixed(0), x, height - padding + 20); // 调整文字位置
            }

            // Y 轴刻度
            const yStep = maxY / 10; // 分为 10 个刻度
            ctx.textAlign = "right";
            for (let j = 0; j <= maxY; j += yStep) {
                const y = height - padding - (j / maxY) * axisHeight;
                ctx.beginPath();
                ctx.moveTo(padding, y);
                ctx.lineTo(padding - 5, y);
                ctx.stroke();
                ctx.fillText(j.toFixed(0), padding - 20, y + 3); // 调整文字位置与轴线分离
            }

            if (rectWidth > 0 && rectHeight > 0) {
                ctx.strokeStyle = cosFTextColor;
                ctx.lineWidth = 2;
                const rectX = padding;
                const rectY = height - padding - (rectHeight / maxY) * axisHeight;
                const scaledWidth = (rectWidth / maxX) * axisWidth;
                const scaledHeight = (rectHeight / maxY) * axisHeight;
                ctx.strokeRect(rectX, rectY, scaledWidth, scaledHeight);
            }

            // 绘制 lightSources 光源
            for (let k = 0; k < lightSources.count; k++) {
                const source = lightSources.get(k);

                // 使用不同的颜色或样式
                ctx.fillStyle = "#FFFFFF"; // 光源条颜色
                ctx.strokeStyle = cosSTextColor; // 红色边框，区分光源类型
                ctx.lineWidth = 2;

                if (source && source.positionX !== undefined && source.positionY !== undefined) {
                    const rectXL = padding + (source.positionX / maxX) * axisWidth;
                    const rectYL = height - padding - (source.positionY / maxY) * axisHeight;
                    const rectWidthL = 50; // 固定宽度
                    const rectHeightL = 10; // 固定高度

                    // 绘制光源矩形条
                    ctx.fillRect(rectXL, rectYL - rectHeightL, rectWidthL, rectHeightL);
                    ctx.strokeRect(rectXL, rectYL - rectHeightL, rectWidthL, rectHeightL);

                    // 绘制光源名称
                    ctx.fillStyle = "#000000";
                    ctx.font = "14px Arial";
                    ctx.fillText(source.name, rectXL + 58, rectYL - rectHeightL - 5); // 名称显示在矩形上方
                }
            }

            // 绘制 addSources 光源
            for (let l = 0; l < addSources.count; l++) {
                const sourceA = addSources.get(l);

                // 绘制光源矩形条
                ctx.fillStyle = "#FFFFFF"; // 光源条颜色
                ctx.strokeStyle = cosTTextColor; // 光源边框颜色
                ctx.lineWidth = 2;

                if (sourceA && sourceA.positionX !== undefined && sourceA.positionY !== undefined) {
                    const rectXA = padding + (sourceA.positionX / maxX) * axisWidth;
                    const rectYA = height - padding - (sourceA.positionY / maxY) * axisHeight;
                    const rectWidthA = 50; // 固定宽度
                    const rectHeightA = 10; // 固定高度

                    // 绘制光源矩形条
                    ctx.fillRect(rectXA, rectYA - rectHeightA, rectWidthA, rectHeightA);
                    ctx.strokeRect(rectXA, rectYA - rectHeightA, rectWidthA, rectHeightA);

                    // 绘制光源名称
                    ctx.fillStyle = "#000000";
                    ctx.font = "14px Arial";
                    ctx.fillText(sourceA.name, rectXA + 58, rectYA - rectHeightA - 5); // 名称显示在矩形上方
                }
            }
        }
    }

    Connections {
        target: addSources
        function onRowsInserted(parent, first, last) {
            canvas.requestPaint()
        }
        function onRowsRemoved(parent, first, last) {
            canvas.requestPaint()
        }
        function onDataChanged(start, end, roles) {
            canvas.requestPaint()
        }
    }

    Connections {
        target: lightSources
        function onRowsInserted(parent, first, last) {
            canvas.requestPaint()
        }
        function onRowsRemoved(parent, first, last) {
            canvas.requestPaint()
        }
        function onDataChanged(start, end, roles) {
            canvas.requestPaint()
        }
    }

    Connections {
        target: mainWindow
        function onCosFTextColorChanged() {
            canvas.requestPaint()
        }
        function onCosSTextColorChanged() {
            canvas.requestPaint()
        }
        function onCosTTextColorChanged() {
            canvas.requestPaint()
        }
    }
}
