import QtQuick
import QtQuick.Controls.Material
import QtQuick.Window
import QtQuick.Layouts
import Qt.labs.folderlistmodel

import contacts

import "project"

Window {
    id: root
//    width: 500
//    height: 500
//    visible: true
//    color: "#2B4B82"



//Rectangle {
//    id: rectangle
//    width: 100
//    height: 100
//    y: 200
//    color: "#00BFA8"
//    radius: 15

//    XAnimator {
//        id: anim
//        target: rectangle
//        from: 0
//        to: 300
//        duration: 1000
//    }

//    MouseArea {
//        id: mouseArea
//        anchors.fill: parent

//        onClicked: anim.start();
//    }
//}

//Rectangle {
//    id: rectangle
//    anchors.centerIn: parent
//    width: 200
//    // height: 200
//    state: "SMALL"

//    states: [
//        State {
//            name: "SMALL"
//            PropertyChanges { target: rectangle; height: 200}
//            PropertyChanges { target: rectangle; color: "#00BFA8"}
//        },
//        State {
//            name: "BIG"
//            PropertyChanges { target: rectangle; height: 400}
//            PropertyChanges { target: rectangle; color: "#F7B4A7"}
//        }
//    ]

//    transitions: Transition {
//            NumberAnimation { property: "height"; duration: 200 }
//            ColorAnimation { duration: 200 }
//        }

//    MouseArea {
//        anchors.fill: parent

//        onClicked: {
//            rectangle.state = (rectangle.state === "SMALL") ? "BIG" : "SMALL";
//        }
//    }
//}


//    Canvas {
//        anchors.centerIn: parent
//        // canvas size
//        width: 200; height: 200
//        // handler to override for drawing
//        onPaint: {
//            // get context to draw with
//            var ctx = getContext("2d")
//            // setup the stroke
//            ctx.lineWidth = 4
//            ctx.strokeStyle = "blue"
//            // setup the fill
//            ctx.fillStyle = "steelblue"
//            // begin a new path to draw
//            ctx.beginPath()
//            // top-left start point
//            ctx.moveTo(50,50)
//            // upper line
//            ctx.lineTo(150,50)
//            // right line
//            ctx.lineTo(150,150)
//            // bottom line
//            ctx.lineTo(50,150)
//            // left line through path closing
//            ctx.closePath()
//            // fill using fill style
//            ctx.fill()
//            // stroke using line width and stroke style
//            ctx.stroke()
//        }
//    }


//    MyCircle {
//        // not into component definition
//        anchors.centerIn: parent
//        defaultColor: "blue"
//        pressedColor: "red"
//        defaultScale: 0.5
//        pressedScale: 0.9

//        onPressed: console.log("Pressed !");
//    }


//    property bool defaultBool // => déjà à false par défaut
//    property int defaultInt // => déjà à 0 par défaut
//    property string defaultString // => déjà à "" par défaut




//// MyLabel.qml
//Rectangle {
//    id: root

//    // created properties
//    property alias text: title.text
//    property color defaultColor: "#94DDDE"
//    property color hoveredColor: "#94DDDE"
//    property real defaultScale: 1.0
//    property real pressedScale: 0.9

//    // content
//    Text {
//        id: title
//        anchors.centerIn: parent
//    }


//    // overrided properties
//    width: 100
//    height: 100
//    radius: width/2
//    color: mouseArea.containsMouse ? root.hoveredColor : root.defaultColor
//    scale: mouseArea.pressed ? root.pressedScale : root.defaultScale

//    // signals
//    signal pressed()

//    // functions
//    function doThings(paramA: int, paramB: int) : int
//    {
//        return paramA * paramB;
//    }

//    // content
//    MouseArea {
//        id: mouseArea
//        anchors.fill: parent
//        hoverEnabled: true

//        onPressed: root.pressed();

//        onClicked: (event) => root.doThings(event.x, event.y);
//    }
//}


        width: 1080
        height: 800
        minimumWidth: 650
        minimumHeight: 800
        visible: true
        title: "Contacts"

        property var currentContact: contactList.currentIndex >= 0 ? contactList.model.get(contactList.currentIndex) : null

        // title
        Row {
            id: titleRow
            anchors {
                top: parent.top
                left: parent.left
                topMargin: CTokens.spacingBig
                leftMargin: 40
            }
            spacing: CTokens.spacingMedium

            CButton {
                icon {
                    width: 36
                    height: 36
                    source: CTokens.iconContact
                    color: CTokens.primary
                }
                enabled: false
                opacity: 1.0
                flat: true
            }

            CText {
                text: "Contacts"
                textStyle: CTokens.h1
                color: CTokens.primary
            }
        }

        RowLayout {
            anchors {
                top: titleRow.bottom
                left: titleRow.left
                right: parent.right
                bottom: parent.bottom
                margins: CTokens.spacingBig
            }
            spacing: CTokens.spacingMedium

            // contact list
            ListView {
                id: contactList
                Layout.fillHeight: true
                Layout.preferredWidth: 308
                spacing: CTokens.spacingSmall
                clip: true

                model: ContactModel {}

                delegate: ContactCard {

                    required property int index

                    width: contactList.width
                    spacing: CTokens.spacingTiny
                    autoExclusive: true
                    checked: index === 0
                    canCall: status !== CAvatar.Status.OFF_LIGNE

                    onClicked: contactList.currentIndex = index;
                }
            }

            // divider
            Rectangle {
                Layout.preferredWidth: 1
                Layout.fillHeight: true
                Layout.topMargin: CTokens.spacingMedium
                Layout.bottomMargin: CTokens.spacingMedium
                color: CTokens.black
                opacity: CTokens.opacityLevel1
            }

            // contact page
            ContactPage {
                Layout.fillHeight: true
                Layout.fillWidth: true

                name: root.currentContact ? root.currentContact.name : ""
                birthday: root.currentContact ? root.currentContact.birthday : ""
                picture: root.currentContact ? root.currentContact.picture : ""
                phoneNumber: root.currentContact ? root.currentContact.phoneNumber : ""
                mail: root.currentContact ? root.currentContact.mail : ""
                address: root.currentContact ? root.currentContact.address : ""
                job: root.currentContact ? root.currentContact.job : ""
                activity: root.currentContact ? root.currentContact.activity : null
                canCall: root.currentContact && root.currentContact.status !== CAvatar.Status.OFF_LIGNE
            }
        }
}
