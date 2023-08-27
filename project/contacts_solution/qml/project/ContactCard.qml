import QtQuick
import QtQuick.Controls.Basic

import contacts

AbstractButton {
    id: root

    required property string picture
    required property int status
    required property string name
    required  property string job
    property alias canCall: callButton.enabled

    implicitWidth: 308
    implicitHeight: 62
    checkable: true
    scale: root.pressed ? 0.95 : 1.0

    Behavior on scale {ScaleAnimator { duration: 50 }}

    background: Rectangle {
        anchors.fill: parent
        radius: CTokens.radius
        color: root.checked ? CTokens.primary : "transparent"
        border {
            width: 2
            color: CTokens.primary
        }
    }

    contentItem: Item {

        CAvatar {
            id: avatar
            anchors {
                top: parent.top
                left: parent.left
                margins: CTokens.spacingSmall
            }
            source: CTokens.pictureBaseUrl + root.picture
            status: root.status
            statusBoderColor: root.checked ? CTokens.primary : CTokens.white
        }

        Column {
            anchors {
                top: parent.top
                topMargin: CTokens.spacingSmall
                left: avatar.right
                leftMargin: CTokens.spacingMedium
            }

            CText {
                id: nameText
                textStyle: CTokens.h3
                color: root.checked ? CTokens.white : CTokens.black
                text: root.name
            }

            CText {
                id: jobText
                color: root.checked ? CTokens.lightGrey : CTokens.grey
                text: root.job
            }
        }

        Row {
            anchors {
                verticalCenter: parent.verticalCenter
                right: parent.right
                rightMargin: CTokens.spacingSmall
            }
            spacing: CTokens.spacingSmall

            // divider
            Rectangle {
                width: 1
                height: 40
                color: root.checked ? CTokens.white : CTokens.black
                opacity: CTokens.opacityLevel1
            }

            CButton {
                id: callButton
                anchors.verticalCenter: parent.verticalCenter
                icon {
                    color: root.checked ? CTokens.white : CTokens.black
                    source: CTokens.iconPhone
                }
                flat: true
            }
        }
    }

}
