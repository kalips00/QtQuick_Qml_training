import QtQuick
import QtQuick.Controls.Basic

Button {
    id: root


    // ========================================================================
    // Item properties
    // ========================================================================

    property CTextStyle textStyle: CTextStyle {}

    // ========================================================================
    // Overrided properties
    // ========================================================================

    implicitWidth: 40
    implicitHeight: 40
    scale: root.pressed ? 0.9 : 1.0
    opacity: root.enabled ? 1.0 : CTokens.opacityLevel1
    font {
        pixelSize: root.textStyle.size
        family: root.textStyle.family
        bold: root.textStyle.weight === Font.Bold
        weight: root.textStyle.weight
    }
    icon {
        color: CTokens.grey
        width: CTokens.iconSizeMedium
        height: CTokens.iconSizeMedium
    }

    background:  Rectangle {
        anchors.fill: parent
        color: root.enabled && (root.hovered || root.pressed) ? (root.flat ? Qt.alpha(CTokens.grey, CTokens.opacityLevel1) : CTokens.lightGrey)
                                            : "transparent"
        border {
            width: 2
            color: root.flat ? "transparent" : CTokens.grey
        }
        radius: 10
    }

}
