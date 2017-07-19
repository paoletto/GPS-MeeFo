import QtQuick 2.7
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "UIConstants.js" as UI
import QtPositioning 5.9


Page {
    Component.onCompleted: {
        theme.inverted = true
    }

    Rectangle {
        id: splashpage
        width: parent.width
        height: parent.height
        color: "black"

        Image {
            id: splash_image
            source: "meego_gpsinfoqt.png"
            anchors.centerIn: parent
        }
        Text {
            id: splash_title
            text: "GPS MeeFo"
            anchors.top: splash_image.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 20
            font.pixelSize: UI.FONT_XLARGE
            color: UI.COLOR_INVERTED_FOREGROUND
            font.capitalization: Font.SmallCaps
            smooth: true
        }
        Text {
            id: splash_intro
            text: "The application is loading. v1.2.0"
            anchors.top: splash_title.bottom
            anchors.topMargin: 15
            font.pixelSize: UI.FONT_XSMALL
            color: UI.COLOR_INVERTED_FOREGROUND
            wrapMode: Text.WordWrap
            smooth: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    onVisibleChanged: {
        appWindow.toolBar = splashpageTools
    }

    ToolBar {
        id: splashpageTools
        visible: true
        RowLayout {
            ToolButton {
                icon.source: "qrc:/back.png"
                anchors.left: parent.left
                onClicked: Qt.quit()
            }
        }
    }
}
