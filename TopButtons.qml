import QtQuick 2.12
import QtQuick.Layouts 1.0

Item {

    id: top_button_wrapper

    property var topButtons:[
        {name:"rdefrost",imageSrc:"images/rear-window-defrost.svg"},
        {name:"wdefrost",imageSrc:"images/windshield-defrost.svg"},
        {name:"ac",imageSrc:"images/air-conditioning.svg"},
        {name:"rc",imageSrc:"images/recirculation.svg"}
    ]

    Rectangle {
        color: "#33ffffff"
        radius: width/2
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.verticalCenter: parent.verticalCenter
        height: parent.height
        width:parent.width

        RowLayout {
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.top: parent.top


            Item {
                Layout.maximumHeight: width
                Layout.maximumWidth: top_button_wrapper.width/(topButtons.length+2)
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            Repeater{
                model:topButtons.length
                TopButton {
                    Layout.maximumHeight: width
                    Layout.maximumWidth: top_button_wrapper.width/(topButtons.length+2)
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    imageSrc: top_button_wrapper.topButtons[index].imageSrc
                    name:top_button_wrapper.topButtons[index].name
                }
            }

            Item {
                Layout.maximumHeight: width
                Layout.maximumWidth: top_button_wrapper.width/(topButtons.length+2)
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

        }

    }
}





















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
