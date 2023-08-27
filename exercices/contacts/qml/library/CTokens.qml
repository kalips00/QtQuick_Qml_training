pragma Singleton

import QtQuick

QtObject {
    id: root

    // Colors properties
    readonly property color white: "#FFFFFF"
    readonly property color black: "#000000"
    readonly property color grey: "#444444"
    readonly property color lightGrey: "#F3F3F3"
    readonly property color primary: "#018270"
    readonly property color green: "#B1CB49"
    readonly property color orange: "#F1B72A"
    readonly property color red: "#E04D48"

    readonly property real opacityLevel1: 0.12
    readonly property real opacityLevel2: 0.42
    readonly property real opacityLevel3: 1.0


    // Fonts properties
    readonly property CTextStyle h1: CTextStyle { size: 36; weight: Font.Bold }
    readonly property CTextStyle h2: CTextStyle { size: 28; weight: Font.Bold }
    readonly property CTextStyle h3: CTextStyle { size: 18; weight: Font.Bold }
    readonly property CTextStyle text: CTextStyle {}
    readonly property CTextStyle smallText: CTextStyle { size: 12 }
    readonly property CTextStyle data: CTextStyle {
        size: 14
        family: "Source Code Pro"
        weight: Font.Bold
    }

    // Sizes properties
    readonly property int iconSizeBig: 24
    readonly property int iconSizeMedium: 20
    readonly property int iconSizeSmall: 10

    readonly property int spacingBig: 24
    readonly property int spacingMedium: 16
    readonly property int spacingSmall: 8
    readonly property int spacingTiny: 4

    readonly property int pictureSizeBig: 72
    readonly property int pictureSizeSmall: 40

    readonly property int radius: 10

    // Icons properties
    readonly property string pictureBaseUrl: "qrc:/contacts/qml/resources/pictures/"
    readonly property url iconContact: "qrc:/contacts/qml/resources/icons/contact.svg"
    readonly property url iconPhone: "qrc:/contacts/qml/resources/icons/phone.svg"
    readonly property url iconMessage: "qrc:/contacts/qml/resources/icons/message.svg"
    readonly property url iconMail: "qrc:/contacts/qml/resources/icons/mail.svg"
}
