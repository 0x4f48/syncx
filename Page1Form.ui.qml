import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    width: 1024
    height: 600
    spacing: 5
    property alias image_right_arrow: image_right_arrow
    property alias mouse_area_right_arrow: mouse_area_right_arrow
    property alias temperature_slider: temperature_slider
    property alias target_temp_text: target_temp_text

    TopButtons {
        id: top_buttons
        width: parent.width * 0.7
        height: parent.height * 0.2
        z: 1
        visible: true
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Image {
        id: image
        sourceSize.height: 600
        sourceSize.width: 1024
        anchors.fill: parent
        source: "images/wallpaper-blue-abstract.png"
        fillMode: Image.PreserveAspectFit

        Text {
            id: element
            x: 304
            y: 311
            width: 249
            height: 35
            color: "#ffffff"
            text: qsTr("Cabin Temperature")
            fontSizeMode: Text.HorizontalFit
            renderType: Text.QtRendering
            font.family: "Tahoma"
            font.pixelSize: 20
        }

        Text {
            id: element1
            x: 304
            y: 352
            width: 179
            height: 90
            color: "#ffffff"
            text: qsTr("75")
            font.bold: true
            font.family: "Tahoma"
            font.pixelSize: 75
        }

        Text {
            id: target_temp_static_text
            x: 305
            y: 164
            width: 261
            height: 35
            color: "#ffffff"
            text: qsTr("Target Temperature")
            font.pixelSize: 19
            font.family: "Tahoma"
            fontSizeMode: Text.FixedSize
            renderType: Text.QtRendering
        }

        Text {
            id: target_temp_text
            x: 305
            y: 205
            width: 179
            height: 90
            color: "#ffffff"
            text: qsTr("75")
            font.pixelSize: 75
            font.family: "Tahoma"
            font.bold: true
        }

        Slider {
            id: temperature_slider
            x: 147
            y: 199
            width: 40
            height: 238
            snapMode: Slider.SnapAlways
            stepSize: 1
            to: 80
            from: 65
            wheelEnabled: true
            spacing: 1
            orientation: Qt.Vertical
            value: 72
        }
    }
    Image {
        id: image_right_arrow
        y: 0
        width: 75
        height: 75
        anchors.verticalCenterOffset: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 0
        opacity: 0.5
        source: "images/chevron-right.svg"
        MouseArea {
            id: mouse_area_right_arrow
            y: 0
            width: 75
            height: 75
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
        }
    }
    Image {
        x: 674
        y: 203
        width: 182
        height: 270
        source: "images/climate-control-icon-human.png"
    }
    Image {
        x: 614
        y: 209
        width: 88
        height: 54
        source: "images/climate-control-icon-front-wind.png"
    }
    Image {
        x: 603
        y: 318
        width: 65
        height: 95
        source: "images/climate-control-icon-down-wind.png"
    }

    FanSlider {
        id: fan_slider
        height: parent.height * 0.2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        //Layout.fillHeight: false
        //Layout.fillWidth: true
    }
}
