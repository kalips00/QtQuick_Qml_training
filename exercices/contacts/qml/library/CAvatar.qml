import QtQuick

Image {
    id: root

    enum Status {
        OFF_LIGNE,
        AVAILABLE,
        ABSENT,
        BUSY
    }

    property int status: CAvatar.Status.OFF_LIGNE
    property color statusBoderColor: CTokens.white

    sourceSize {
        width: CTokens.pictureSizeSmall
        height: CTokens.pictureSizeSmall
    }

    Rectangle {
        id: statusRectangle
        anchors {
            horizontalCenter: root.right
            verticalCenter: root.bottom
            horizontalCenterOffset: -width/3
            verticalCenterOffset: -height/3
        }

        width: 16
        height: 16
        color: root.status === CAvatar.Status.OFF_LIGNE ? CTokens.grey :
                                                          root.status === CAvatar.Status.AVAILABLE ? CTokens.green :
                                                                                                     root.status === CAvatar.Status.ABSENT ? CTokens.orange : CTokens.red
        border {
            width: 2
            color: root.statusBoderColor
        }
        radius: 8
    }

}
