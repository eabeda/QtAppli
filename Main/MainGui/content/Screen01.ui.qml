/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.5
import QtQuick.Controls 6.5
import MainGui

Rectangle {
    id: mainwin
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Text {
        text: qsTr("System control")
        anchors.verticalCenterOffset: -128
        anchors.horizontalCenterOffset: 0
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    Button {
        id: buttonOk
        x: 32
        y: 233
        text: qsTr("Ok")
    }

    Button {
        id: buttonReload
        x: 156
        y: 233
        text: qsTr("Reload")
    }

    Button {
        id: buttonQuit
        x: 272
        y: 233
        text: qsTr("Quit")
    }

    CheckBox {
        id: checkBox1
        x: 32
        y: 42
        text: qsTr("/opt")
    }

    CheckBox {
        id: checkBox2
        x: 32
        y: 80
        text: qsTr("/etc")
    }

    CheckBox {
        id: checkBox3
        x: 32
        y: 116
        text: qsTr("/usr")
    }

    ProgressBar {
        id: progressBar
        x: 32
        y: 181
        width: 340
        height: 23
        value: 0.1
    }
}
