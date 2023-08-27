import QtQuick

import contacts

Item {
    id: root
    width: childrenRect.width
    height: childrenRect.height


    enum ActivityType {
        CALL,
        MESSAGE
    }

    enum ActivitySubType {
        IN,
        OUT
    }

    required property int type
    required property int subType
    required property string date
    required property string content

    // icon
    Rectangle {
        id: icon
        width: 24
        height: 24
        radius: CTokens.radius / 2
        color: CTokens.primary

        Image {
            anchors.centerIn: parent
            source: root.type === ActivityPanel.ActivityType.CALL ? CTokens.iconPhone : CTokens.iconMessage
            sourceSize: Qt.size(16,16)
        }
    }

    // title
    CText {
        id: title
        anchors {
            left: icon.right
            leftMargin: CTokens.spacingMedium
            verticalCenter: icon.verticalCenter
        }
        text: (root.type === ActivityPanel.ActivityType.CALL ? "Appel " : "Message ") +
              (root.subType === ActivityPanel.ActivitySubType.IN ? "entrant" : "sortant")
    }

    // divider
    Rectangle {
        anchors {
            horizontalCenter: icon.horizontalCenter
            top: content.top
            bottom: content.bottom
        }
        width: 1
        color: CTokens.primary
    }

    // content
    Column {
        id: content
        anchors {
            left: title.left
            top: title.bottom
            topMargin: CTokens.spacingSmall
        }
        spacing: CTokens.spacingSmall

        CText {
            text: root.date
            textStyle: CTokens.smallText
            color: CTokens.grey
        }

        Row {
            spacing: CTokens.spacingMedium

            CText {
                anchors.verticalCenter: parent.verticalCenter
                text: "Durée"
                textStyle: CTokens.smallText
                visible: (root.type === ActivityPanel.ActivityType.CALL)
                color: CTokens.grey
            }

            CText {
                text: root.content
                textStyle: CTokens.data
            }
        }
    }

}
