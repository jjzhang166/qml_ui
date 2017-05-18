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
        anchors.top: parent.top;
        anchors.topMargin: 75;
        anchors.horizontalCenter: parent.horizontalCenter;
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
    }

    Column {
        id: inputColumn;
        anchors.top: cpanel.bottom;
        anchors.topMargin: 50;
        anchors.horizontalCenter: parent.horizontalCenter;
        spacing: 10;
        Row {
            id:rpanel;
            spacing: 5;
            TextField {
                placeholderText: qsTr("姓名");
                style: TextFieldStyle {
                    background: Rectangle {
                        color: "#FFFFCC";
                        implicitWidth: 200;
                        implicitHeight: 40;
                    }
                }
            }
            TextField {
                placeholderText: qsTr("年龄");
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
                readOnly: true;
                selectByMouse: false;
                menu: null;
                placeholderText: qsTr("13012345678");
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
                selectByMouse: false;
                menu: null;
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

        Row {
            id: pwRow;
            TextField {
                id: pwInput;
                placeholderText: qsTr("密码");
                echoMode: TextInput.Password;
                style: TextFieldStyle {
                    background: Rectangle {
                        color: "#FFFFCC";
                        implicitWidth: 320;
                        implicitHeight: 40;
                    }
                }
            }
            FlatButton {
                id: eyeBtn;
                height: 40;
                width: 40;
                property var eyeState: false;
                iconSource: "icons/eye_closed.png";
                iconHeight: 40;
                iconWidth: 40;
                onClicked: {
                    if(eyeState === false)
                    {
                        eyeBtn.iconSource = "icons/eye.png";
                        pwInput.echoMode = TextInput.Normal;
                        eyeBtn.eyeState = true;
                    }
                    else
                    {
                        eyeBtn.iconSource = "icons/eye_closed.png";
                        pwInput.echoMode = TextInput.Password;
                        eyeBtn.eyeState = false;
                    }
                }
            }
        }
    }
    Column {
        anchors.top: inputColumn.bottom;
        anchors.topMargin: 50;
        anchors.horizontalCenter: parent.horizontalCenter;
        Button {
            width: 150;
            height: 40;
            Text {
                id: name;
                text: qsTr("储存变更");
                color: "white";
                font.pointSize: 15;
                anchors.centerIn: parent;
            }
            style: ButtonStyle {
                background: Rectangle {
                    radius: 5;
                    color: "#00ffcc";
                }
            }
        }
    }
}

