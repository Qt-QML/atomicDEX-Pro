import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0
import "../Components"
import "../Constants"

Rectangle {
    property var item
    width: parent.width
    height: 175

    property bool hovered: false

    color: hovered ? Style.colorTheme8 : "transparent"

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onHoveredChanged: hovered = containsMouse
        onClicked: {
            order_modal.current_item_uuid = item.uuid
            order_modal.open()
        }
    }

    OrderContent {
        width: parent.width * 0.9
        height: 200

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 20
        item: parent.item
    }

    HorizontalLine {
        visible: index !== items.length -1
        width: parent.width
        color: Style.colorWhite9
        anchors.bottom: parent.bottom
    }
}




/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
