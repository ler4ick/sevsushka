import QtQuick 2.12
import QtQuick.Window 2.12
import "core"
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button {
        id: button
        x: 71
        y: 51
        color: "#d9271d"
        buttonColor: "#d9271d"

        onButtonClick: {
        // Изменение цвета красной кнопки на синий
            if(button.color == "#d9271d"){
            button.color = "#add8e6";

        // Случайный выбор другой кнопки
            var randomIndex = Math.floor(Math.random() * parent.children.length);
            var randomButton = parent.children[randomIndex];
            if (randomButton !== this) {
                    randomButton.color = "#d9271d";
            }
            else {
                button.color = "#d9271d";
            }
            }
        }
    }

    Button {
        id: button1
        x: 245
        y: 51
        onButtonClick: {
        // Изменение цвета красной кнопки на синий
            if(button1.color == "#d9271d"){
            button1.color = "#add8e6";

        // Случайный выбор другой кнопки
            var randomIndex = Math.floor(Math.random() * parent.children.length);
            var randomButton = parent.children[randomIndex];
            if (randomButton !== this) {
                    randomButton.color = "#d9271d";
            }
            else {
                button1.color = "#d9271d";
            }
        }
        }
    }

    Button {
        id: button2
        x: 421
        y: 51
        onButtonClick: {
        // Изменение цвета красной кнопки на синий
            if(button2.color == "#d9271d"){
            button2.color = "#add8e6";

        // Случайный выбор другой кнопки
            var randomIndex = Math.floor(Math.random() * parent.children.length);
            var randomButton = parent.children[randomIndex];
            if (randomButton !== this) {
                    randomButton.color = "#d9271d";
            }
            else {
                button2.color = "#d9271d";
            }
            }
        }
    }

    Button {
        id: button3
        x: 71
        y: 150
        onButtonClick: {
        // Изменение цвета красной кнопки на синий
            if(button3.color == "#d9271d"){
            button3.color = "#add8e6";

        // Случайный выбор другой кнопки
            var randomIndex = Math.floor(Math.random() * parent.children.length);
            var randomButton = parent.children[randomIndex];
            if (randomButton !== this) {
                    randomButton.color = "#d9271d";
            }
            else {
                button3.color = "#d9271d";
            }
            }
        }
    }

    Button {
        id: button4
        x: 245
        y: 150
        onButtonClick: {
        // Изменение цвета красной кнопки на синий
            if(button4.color == "#d9271d"){
            button4.color = "#add8e6";

        // Случайный выбор другой кнопки
            var randomIndex = Math.floor(Math.random() * parent.children.length);
            var randomButton = parent.children[randomIndex];
            if (randomButton !== this) {
                    randomButton.color = "#d9271d";
            }
            else {
                button4.color = "#d9271d";
            }
            }
        }
    }

    Button {
        id: button5
        x: 421
        y: 150
        onButtonClick: {
        // Изменение цвета красной кнопки на синий
            if(button5.color == "#d9271d"){
            button5.color = "#add8e6";

        // Случайный выбор другой кнопки
            var randomIndex = Math.floor(Math.random() * parent.children.length);
            var randomButton = parent.children[randomIndex];
            if (randomButton !== this) {
                    randomButton.color = "#d9271d";
            }
            else {
                button5.color = "#d9271d";
            }
            }
        }
    }

    Button {
        id: button6
        x: 71
        y: 248
        onButtonClick: {
        // Изменение цвета красной кнопки на синий
            if(button6.color == "#d9271d"){
            button6.color = "#add8e6";

        // Случайный выбор другой кнопки
            var randomIndex = Math.floor(Math.random() * parent.children.length);
            var randomButton = parent.children[randomIndex];
            if (randomButton !== this) {
                    randomButton.color = "#d9271d";
            }
            else {
                button6.color = "#d9271d";
            }
            }
        }
    }

    Button {
        id: button7
        x: 245
        y: 248
        onButtonClick: {
        // Изменение цвета красной кнопки на синий
            if(button7.color == "#d9271d"){
            button7.color = "#add8e6";

        // Случайный выбор другой кнопки
            var randomIndex = Math.floor(Math.random() * parent.children.length);
            var randomButton = parent.children[randomIndex];
            if (randomButton !== this) {
                    randomButton.color = "#d9271d";
            }
            else {
                button7.color = "#d9271d";
            }
            }
        }
    }

    Button {
        id: button8
        x: 421
        y: 248
        onButtonClick: {
        // Изменение цвета красной кнопки на синий
            if(button8.color == "#d9271d"){
            button8.color = "#add8e6";

        // Случайный выбор другой кнопки
            var randomIndex = Math.floor(Math.random() * parent.children.length);
            var randomButton = parent.children[randomIndex];
            if (randomButton !== this) {
                    randomButton.color = "#d9271d";
            }
            else {
                button8.color = "#d9271d";
            }
            }
        }
    }

    Button {
        id: button9
        x: 71
        y: 347
        onButtonClick: {
        // Изменение цвета красной кнопки на синий
            if(button9.color == "#d9271d"){
            button9.color = "#add8e6";

        // Случайный выбор другой кнопки
            var randomIndex = Math.floor(Math.random() * parent.children.length);
            var randomButton = parent.children[randomIndex];
            if (randomButton !== this) {
                    randomButton.color = "#d9271d";
            }
            else {
                button9.color = "#d9271d";
            }
            }
        }
    }

    Button {
        id: button10
        x: 245
        y: 347
        onButtonClick: {
        // Изменение цвета красной кнопки на синий
            if(button10.color == "#d9271d"){
            button10.color = "#add8e6";

        // Случайный выбор другой кнопки
            var randomIndex = Math.floor(Math.random() * parent.children.length);
            var randomButton = parent.children[randomIndex];
            if (randomButton !== this) {
                    randomButton.color = "#d9271d";
            }
            else {
                button10.color = "#d9271d";
            }
            }
        }
    }

    Button {
        id: button11
        x: 421
        y: 347
        onButtonClick: {
        // Изменение цвета красной кнопки на синий
            if(button11.color == "#d9271d"){
            button11.color = "#add8e6";

        // Случайный выбор другой кнопки
            var randomIndex = Math.floor(Math.random() * parent.children.length);
            var randomButton = parent.children[randomIndex];
            if (randomButton !== this) {
                    randomButton.color = "#d9271d";
            }
            else {
                button11.color = "#d9271d";
            }
            }
        }
    }
}
