import QtQuick 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle {
    id: uui;
    height: 800;
    width: 480;
    color: "#330000"

    Column {
        id: cpanel;
        anchors.centerIn: parent;
        spacing: 10;

        FlatButton {
            id: person;
            anchors.horizontalCenter: parent.horizontalCenter;
            iconSource: "icons/person.png"
            iconHeight: 150;
            iconWidth: 150;
        }

        Text {
            text: "Wind";
            font.pointSize: 25;
            color: "yellow";
            anchors.horizontalCenter: parent.horizontalCenter;
        }

        Row {
            id:rpanel;
            spacing: 5;
            TextField {
                placeholderText: qsTr("Enter name");
//                anchors.horizontalCenter: parent.horizontalCenter;
                style: TextFieldStyle {
                    background: Rectangle {
                        color: "#FFFFCC";
                        implicitWidth: 200;
                        implicitHeight: 40;
                    }
                }
            }
            TextField {
                placeholderText: qsTr("age");
//                anchors.horizontalCenter: parent.horizontalCenter;
                style: TextFieldStyle {
                    background: Rectangle {
                        color: "#FFFFCC";
                        implicitWidth: 75;
                        implicitHeight: 40;
                    }
                }
            }
            ComboBox {
                model: ["男", "女"];
                style: ComboBoxStyle {
                    dropDownButtonWidth: 20;
                    background: Rectangle {
                        color: "#FFFFCC";
                        implicitWidth: 75;
                        implicitHeight: 40;

                        Canvas {
                            width: 16;
                            height: 18;
                            anchors.right: parent.right;
                            anchors.rightMargin: 3;
                            anchors.top: parent.top;
                            anchors.topMargin: 8;
                            onPaint: {
                                var ctx = getContext("2d");
                                ctx.save();
                                ctx.strokeStyle = "black";
                                ctx.lineWidth = 2;
                                ctx.beginPath();
                                ctx.moveTo(1,8);
                                ctx.lineTo(8,16);
                                ctx.lineTo(15,8);
                                ctx.stroke();
                                ctx.restore();
                            }
                        }
                    }
                }
            }
        }

        Row {
            TextField {
                placeholderText: qsTr("手机号");
//                anchors.horizontalCenter: parent.horizontalCenter;
                style: TextFieldStyle {
                    background: Rectangle {
                        color: "#FFFFCC";
                        implicitWidth: 150;
                        implicitHeight: 40;
                    }
                }
            }
            TextField {
                readOnly: true;
//                placeholderText: qsTr("手机号已被绑定，不能修改。");
                textColor: "red";
                text: qsTr("手机号已被绑定，不能修改。");
                style: TextFieldStyle {
                    background: Rectangle {
                        color: "#FFFFCC";
                        implicitWidth: 210;
                        implicitHeight: 40;
                    }
                }
            }
        }
    }
}

