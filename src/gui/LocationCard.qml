import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: card

    property string locationName
    property string locationAddress
    property url imageSource: ""

    implicitWidth: 280
    implicitHeight: 250

    color: '#2d2d2d'
    border.color: "#eee"
    border.width: 1
    radius: 4

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 4

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 160

            Image {
                anchors.fill: parent
                source: card.imageSource
                fillMode: Image.PreserveAspectCrop
                visible: status === Image.Ready
            }

            Text {
                anchors.centerIn: parent
                text: qsTr("Image not uploaded")
                color: "#999"
                visible: card.imageSource.toString() === ""
            }
        }

        Label {
            Layout.fillWidth: true

            text: card.locationName
            color: "#eee"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideRight
        }

        Label {
            Layout.fillWidth: true

            text: card.locationAddress
            color: "#999"
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideRight
        }
    }
}