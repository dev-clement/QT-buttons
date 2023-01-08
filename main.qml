import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    id: root
    width: 640
    height: 480
    visible: true
    color: "#7b7777"
    title: qsTr("Hello World")

    Column {
        id: colImage
        spacing: 10

        Row {
            id: rowBtn
            property double buttonNb: 4
            visible: true
            width: 640
            height: 45
            spacing: (root.width) / (buttonNb + 2)

            Button {
                id: birdBtn
                height: rowBtn.height
                text: "Bird"

                MouseArea {
                    id: birdMouseArea
                    anchors.fill: parent
                    onClicked: {
                        birdItem.visible = !birdItem.visible
                        catItem.visible = false
                        dogItem.visible = false
                        fishItem.visible = false
                    }
                }
            }

            Button {
                id: catBtn
                height: rowBtn.height
                text: "Cat"

                MouseArea {
                    id: catMouseArea
                    anchors.fill: parent
                    onClicked: {
                        birdItem.visible = false
                        catItem.visible = !catItem.visible
                        dogItem.visible = false
                        fishItem.visible = false
                    }
                }
            }

            Button {
                id: dogBtn
                height: rowBtn.height
                text: "Dog"

                MouseArea {
                    id: dogMouseArea
                    anchors.fill: parent
                    onClicked: {
                        birdItem.visible = false
                        catItem.visible = false
                        dogItem.visible = !dogItem.visible
                        fishItem.visible = false
                    }
                }
            }

            Button {
                id: fishBtn
                height: rowBtn.height
                text: "Fish"

                MouseArea {
                    id: rishMouseArea
                    anchors.fill: parent
                    onClicked: {
                        birdItem.visible = false
                        catItem.visible = false
                        dogItem.visible = false
                        fishItem.visible = !fishItem.visible
                    }
                }
            }
        }

        Item {
            id: birdItem

            y: root.height - rowBtn.height
            width: root.width
            height: 400
            visible: true

            Image {
                id: birdImg
                source: "qrc:/images/images/bird.jpg"
                anchors.fill: birdItem
            }
        }

        Item {
            id: catItem

            y: root.height - rowBtn.height
            width: root.width
            height: 400
            visible: true

            Image {
                id: catImg
                source: "qrc:/images/images/cat.jpg"
                anchors.fill: catItem
            }
        }

        Item {
            id: dogItem

            y: root.height - rowBtn.height
            width: root.width
            height: 400
            visible: true

            Image {
                id: dogImg
                source: "qrc:/images/images/dog.jpg"
                anchors.fill: dogItem
            }
        }

        Item {
            id: fishItem

            y: root.height - rowBtn.height
            width: root.width
            height: 400
            visible: true

            Image {
                id: fishImg
                source: "qrc:/images/images/fish.jpg"
                anchors.fill: fishItem
            }
        }

    }
}
