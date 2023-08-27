import QtQuick
import QtQuick.Controls.Material
import QtQuick.Window
import QtQuick.Layouts
import Qt.labs.folderlistmodel

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

    // Replace by the contact application
    CText {
        anchors.centerIn: parent
        text: "Work in progress"
        font.pixelSize: 32
    }
}
