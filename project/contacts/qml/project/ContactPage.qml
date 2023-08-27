import QtQuick

import contacts

Column {
    id: root

    required property string name
    required property string birthday
    required property string picture
    required property string mail
    required property string address
    required property string job
    required property string phoneNumber
    required property var activity

    property alias canCall: callButton.enabled

    spacing: CTokens.spacingBig

    // header
    Row {
        id: headerRow
        spacing: CTokens.spacingMedium

        // picture
        Image {
            sourceSize: Qt.size(CTokens.pictureSizeBig, CTokens.pictureSizeBig)
            source: Boolean(root.picture) ? CTokens.pictureBaseUrl + root.picture : ""
        }

        Column {
            spacing: CTokens.spacingTiny

            CText {
                text: root.name
                color: CTokens.primary
                textStyle: CTokens.h1
            }

            CText {
                text: root.mail
                color: CTokens.grey
            }

            Row {
                topPadding: CTokens.spacingMedium
                spacing: CTokens.spacingSmall

                CButton {
                    id: callButton
                    icon.source: CTokens.iconPhone
                }
                CButton {
                    icon.source: CTokens.iconMessage
                }
                CButton {
                    icon.source: CTokens.iconMail
                }
            }
        }
    }

    // personnal info
    Column {
        topPadding: CTokens.spacingBig
        leftPadding: CTokens.spacingBig
        spacing: CTokens.spacingBig

        CText {
            text: "Personal information"
            color: CTokens.primary
            textStyle: CTokens.h3
        }

        Grid {
            leftPadding: CTokens.spacingMedium
            columns: 2
            rows: 4
            columnSpacing: 56
            rowSpacing: CTokens.spacingMedium

            CText { text: "Poste"; color: CTokens.grey }
            CText { text: root.job; textStyle: CTokens.data }
            CText { text: "Date de naissance"; color: CTokens.grey }
            CText { text: root.birthday; textStyle: CTokens.data }
            CText { text: "Numéro de téléphone"; color: CTokens.grey }
            CText { text: root.phoneNumber; textStyle: CTokens.data }
            CText { text: "Adresse postale"; color: CTokens.grey }
            CText { text: root.address; textStyle: CTokens.data }
        }
    }

    // activity
    Column {
        topPadding: CTokens.spacingBig
        leftPadding: CTokens.spacingBig
        spacing: CTokens.spacingBig

        CText {
            text: "Activity"
            color: CTokens.primary
            textStyle: CTokens.h3
        }

        // no activity
        CText {
            text: "Aucune activité"
            visible: activityList.count === 0
        }

        ListView {
            id: activityList
            width: root.width
            height: 280
            spacing: CTokens.spacingMedium
            model: root.activity
            interactive: contentHeight > height
            clip: interactive

            delegate: ActivityPanel {}
        }
    }
}
