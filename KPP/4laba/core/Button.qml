import QtQuick 2.0

 Rectangle {
 //идентификатор элемента
    id: button

    //эти свойства используются как константы, доступны также
    //извне
    property int buttonHeight: 75
    property int buttonWidth: 150

    //свойство для хранения текста на кнопке
    property string label
    property color textColor: buttonLabel.color

    //цвет при наведении курсора

    property color onHoverColor: "lightsteelblue"
    property color borderColor: "transparent"

    //цвет кнопки
    property color buttonColor: "#add8e6"

    property real labelSize: 14

    //свойства отображения
    radius: 6
    property alias buttonLabel: buttonLabel
    antialiasing: true
    border { width: 2; color: borderColor }
    width: buttonWidth; height: buttonHeight

    Text {
        id: buttonLabel
        anchors.centerIn: parent
        text: label //привязываем текст к тексту
        //"родителя"
        color: "#000000"
        font.pointSize: labelSize
     }

     //сигнал, который будет вызываться при нажатии
     signal buttonClick()

     //определяем "кликабельную" зону равную поверхности всей
    //кнопки
     MouseArea {
         id: buttonMouseArea
         anchors.fill: parent //размер равен размеру
        //"родителя"
         onClicked: buttonClick()

         //если равно true, то будет вызываться onEntered и
        //onExited при наведении/удалении курсора
         //false - необходимо кликнуть чтобы отработал mouse
        //hover
         hoverEnabled: true

         //отобразить рамку, если навели курсор
         onEntered: parent.border.color = onHoverColor
         //удалить рамку при удалении курсора с кнопки
         onExited: parent.border.color = borderColor
     }

     //изменить цвет кнопки при нажатии
     color: buttonMouseArea.pressed ? Qt.darker(buttonColor,
     1.5) : buttonColor
     //анимация смены цвета
     Behavior on color { ColorAnimation{ duration: 55 } }

     //увеличить кнопку при нажатии
     scale: buttonMouseArea.pressed ? 1.1 : 1.00
     //анимация при увеличении кнопки
     Behavior on scale { NumberAnimation{ duration: 55 }}
}
