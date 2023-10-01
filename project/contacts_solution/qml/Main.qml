import QtQuick
import QtQuick.Window
import QtQuick.Layouts

import contacts

import "project"

Window {
    id: root
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
