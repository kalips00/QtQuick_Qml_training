// Qt imports
import QtQuick 2.14

// Project import
import my.project 1.0  // plugin or module
import "my/folder" // relative import

/**
 * @class Template
 * @brief A description of the Template item
*/
Item {
    /*
     * This is the order of implementation in MissionPlus
     *
     * 1. id
     * 2. property declarations
     * 3. object properties
     * 4. signal declarations
     * 5. slots declarations
     * 6. JavaScript functions
     * 7. child objects
     * 8. states
     * 9. transitions
    */


    /*
     * 1. id on the first line makes it easy to find an object
     * The root item must be named "root", it allow to avoid grand-parent acces
     *
    */
    id: root

    // 2. property declarations

    // ========================================================================
    // Item properties
    // ========================================================================

    /**
     * @property thumbnail
     * @brief A description thumbnail property
    */
    property bool thumbnail

    /**
     * @property image
     * @brief A description image property
    */
    property alias image: photoImage.source

    // 3. object properties
    // try to group related properties together

    // ========================================================================
    // Object properties
    // ========================================================================

    x: 20; y: 20; height: 150
    // large bindings
    width: {
        if (photoImage.width > 200) {
            photoImage.width;
        } else {
            200;
        }
    }
    // group bindings of the same attribute
    anchors {
        top: parent.top
        bottom: parent.bottom
        right: parent.right
        left: anotherItem.right
    }


    // 4. signal declarations

    // ========================================================================
    // Item signals
    // ========================================================================

    /**
     * @fn clicked
     * @brief A description of the clicked signal
    */
    signal clicked()

    // 5. slots declarations
    // ========================================================================
    // Item slots
    // ========================================================================

    selection.onClick: {
        variableBool = true;
    }

    // 6. javascript functions
    // If the script is more than a couple of lines long or can be used
    // by different objects, we recommend creating a function

    // ========================================================================
    // Item functions
    // ========================================================================

    /**
     * @fn calculateWidth
     * @brief A description of the calculateWidth function
    */
    function calculateWidth(object)
    {
        let w = object.width / 3;
        // ...
        // more javascript code
        // ...
        console.debug(w);
        return w;
    }

    // 7. child objects

    // ========================================================================
    // Item children
    // ========================================================================
    Rectangle {
        id: border
        anchors.centerIn: parent; color: "white"

        Image { id: photoImage; anchors.centerIn: parent }

        ListModel {
            id:listModelName

            // A role must begin by "r" to avoid misunderstanding from the javascript interpretor
            // e.g role named "text", may be the role but also the text property of the Text Qml Item
            ListElement {rRole1:true;rRole2:"toto"}
            ListElement {rRole1:false;rRole2:"tata"}
        }
    }


    // 8. states

    // ========================================================================
    // States
    // ========================================================================

    states: State {
        name: "selected"
        PropertyChanges { target: border; color: "red" }
    }

    // 9. transitions

    // ========================================================================
    // Transition
    // ========================================================================

    transitions: Transition {
        from: ""; to: "selected"
        ColorAnimation { target: border; duration: 200 }
    }


    Behavior on width{NumberAnimation{}}
}
