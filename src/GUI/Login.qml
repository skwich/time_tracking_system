import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    color: "#212121"
    title: qsTr("Time tracking system")

    ColumnLayout {
        anchors.centerIn: parent
        spacing:15

        Text {
            text: qsTr("Sing in")
            color: "white"
            Layout.alignment: Qt.AlignCenter            
        }

        RowLayout {
            spacing: 10
            Layout.alignment: Qt.AlignVCenter

            Text {
                text: qsTr("Login:")
                color: "white"
                horizontalAlignment: Text.AlignRight
                Layout.preferredWidth: 60
            }

            TextField {
                color: "white"
            }
        }

        RowLayout {
            spacing: 10
            Layout.alignment: Qt.AlignVCenter

            Text {
                text: qsTr("Password:")
                color: "white"
                horizontalAlignment: Text.AlignRight
                Layout.preferredWidth: 60
            }

            TextField {
                color: "white"
            }
        }

        Button {
            text: qsTr("Enter")
            Layout.preferredWidth: 60
            Layout.preferredHeight: 30
            Layout.alignment: Qt.AlignCenter
        }
    }
}