import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 1280
    height: 640
    visible: true
    color: "#212121"
    title: qsTr("Enterprise Resource Planning")

    StackView {
        id: stack_view
        anchors.fill: parent
        
        initialItem: Login {
            onAuthorize: stack_view.push(locationsComponent)
        }

        pushEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to:1
                duration: 200
            }
        }
        pushExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to:0
                duration: 200
            }
        }
        popEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to:1
                duration: 200
            }
        }
        popExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to:0
                duration: 200
            }
        }
    }

    Component {
        id: locationsComponent
        Locations{}
    }
}
