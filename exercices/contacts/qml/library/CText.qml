import QtQuick

Text {
    id: root

    // ========================================================================
    // Item properties
    // ========================================================================

    property CTextStyle textStyle: CTextStyle {}

    // ========================================================================
    // Overrided properties
    // ========================================================================

    font {
        pixelSize: root.textStyle.size
        family: root.textStyle.family
        bold: root.textStyle.weight === Font.Bold
        weight: root.textStyle.weight
    }
    elide: Text.ElideRight
    maximumLineCount: 1
    wrapMode: Text.WordWrap
}
