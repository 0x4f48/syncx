import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 1024
    height: 600
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        objectName: "swipeViewObj"
        anchors.fill: parent
        currentIndex: 0
        interactive: false

        Page1Form {
            mouse_area_right_arrow.onClicked: {
                console.log('right arrow clicked');
                swipeView.incrementCurrentIndex()
            }
            temperature_slider.onValueChanged: {
                target_temp_text.text = temperature_slider.value
            }
        }

        Page2Form {
            mouse_area_left_arrow.onClicked: {
                swipeView.decrementCurrentIndex()
            }
            mouseArea1.onReleased: {
                console.log('onReleasedl');
}
            mouseArea1.onPressed: {
                console.log('onPressed');
            }
            mouseArea1.onPositionChanged: {
                console.log('onPositionChanged');
                mouse.accepted = true

            }
        }
        function test_slot() {
            console.log('got signal');
            if ( swipeView.currentIndex == 0 ) {
                swipeView.incrementCurrentIndex()
            } else {
                swipeView.decrementCurrentIndex()
            }
        }
    }

}
