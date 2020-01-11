import QtQuick 2.12
import QtQuick.Layouts 1.3
import Qt.SafeRenderer 1.1
import QtQuick.Studio.Effects 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.12
import "../Constants"

Item {
    property alias image_path: image.source
    property alias image_scale: image.scale
    property alias title: content.title
    property alias content: content.inside

    ColumnLayout {
        id: window_layout

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        transformOrigin: Item.Center
        spacing: 20

        Rectangle {
            id: rectangle
            color: "#283547"
            radius: 100
            implicitWidth: image.implicitHeight
            implicitHeight: image.implicitHeight
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Image {
                id: image
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                antialiasing: true
            }
        }

        PaneWithTitle {
            id: content
        }
    }
}





/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
