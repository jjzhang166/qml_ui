import QtQuick 2.0

Rectangle {
    id: fb;
    implicitHeight: 200;
    implicitWidth: 200;
    color: "#FFFFCC";
    radius: 100;
    property alias iconSource: icon.source;
    property alias iconWidth: icon.width;
    property alias iconHeight: icon.height;
    property bool hovered: false;
    border.color: "#FF9900";
    border.width: hovered?5:0;

    signal clicked;
    Image {
        id: icon;
        anchors.verticalCenter: parent.verticalCenter;
        anchors.horizontalCenter: parent.horizontalCenter;
    }

    MouseArea {
        id: ma;
        anchors.fill: parent;
        hoverEnabled: true;
        onEntered: {
            fb.hovered = true;
        }
        onExited: {
            fb.hovered = false;
        }
        onClicked: {
            fb.hovered = false;
            fb.clicked();
        }
    }
}

