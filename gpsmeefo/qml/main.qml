import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    id: appWindow
    width: 640
    height: 640
    visible: true

    property var theme: QtObject {
        property bool inverted: false
    }

    property bool isPortrait: Screen.primaryOrientation === Qt.PortraitOrientation || Screen.primaryOrientation === Qt.InvertedPortraitOrientation

    StackView {
        id: pageStack
        anchors.fill: parent

        initialItem: splashPage


        MainPage {
            id: mainPage
        }

        SplashPage {
            id: splashPage
        }

        InfoPage {
            id: infoPage
        }

        Timer {
            id: splashpagetimer
            running: true
            repeat: false
            interval: 2500
            onTriggered: {
                pageStack.push(mainPage)
            }
        }
    }
}
