import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    id: locationPage

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 24
        spacing: 5

        Label {
            Layout.fillWidth: true

            text: qsTr("Locations")
            color: "white"
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
        }

        GridLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignCenter

            columns: 4
            rowSpacing: 20
            columnSpacing: 20

            LocationCard {
                locationName: "Моя кафешка"
                locationAddress: "Екб, ул. 8 Марта"
                imageSource: "https://img.restoclub.ru/uploads/place/f/4/2/a/f42aa8aeb92b0edd078a2ad6678e2398_w470.jpg"
            }

            LocationCard {
                locationName: "Моя кафешка 2"
                locationAddress: "Екб, ул. 8 Марта"
                imageSource: "https://img.restoclub.ru/uploads/place/f/4/2/a/f42aa8aeb92b0edd078a2ad6678e2398_w470.jpg"
            }

            LocationCard {
                locationName: "Ресторан: амням"
                locationAddress: "Екб, ул. 8 Марта"
                imageSource: "https://img.restoclub.ru/uploads/place/f/4/2/a/f42aa8aeb92b0edd078a2ad6678e2398_w470.jpg"
            }
        }
    }
}