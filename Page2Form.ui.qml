import QtQuick 2.12
import QtQuick.Controls 2.5
import QtGStreamer 1.0

Page {
    id: page
    width: 1024
    height: 600
    property alias mouse_area_left_arrow: mouse_area_left_arrow
    property alias mouseArea1: mouseArea1

    Rectangle {
        id: rectangle
        color: "#000000"
        anchors.fill: parent
    }

    VideoItem {
        id: video
        anchors.verticalCenter: parent.verticalCenter
        width: 1024
        height: 600
        surface: videoSurface1

        MouseArea {
            id: mouseArea1
            z: 0
            anchors.fill: parent
            propagateComposedEvents: false
        }
    }

    Image {
        x: 0
        y: 0
        width: 75
        height: 75
        anchors.verticalCenterOffset: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.verticalCenter: parent.verticalCenter
        z: 1
        opacity: 0.6
        source: "images/chevron-left.svg"
    }

    MouseArea {
        id: mouse_area_left_arrow
        x: 0
        y: 0
        width: 75
        height: 75
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        z: 1
        anchors.leftMargin: 0
    }
}




/*##^## Designer {
    D{i:4;anchors_x:17}
}
 ##^##*/
