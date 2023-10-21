import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.0
import "core"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function buttonClicked(curentButton)
    {
        var buttons = [button0,button1,button2,button3,button4,button5,button6,button7,button8,button9,button10,button11];
        if(curentButton.color == "#ff0000"){
            curentButton.color = "lightblue";
            var index = Math.floor(buttons.length * Math.random());
            var btn = buttons[index];
            btn.color = "#ff0000";
            //appClass.saveState(index);
            appClass.setState(index);
        }
    }

    function restoreLastSaving(index)
    {
        var buttons = [button0,button1,button2,button3,button4,button5,button6,button7,button8,button9,button10,button11];
        for(let i=0;i<buttons.length;i++){
            var btn = buttons[i];
            if(i==index){
                btn.color = "#ff0000";
            }else{
                btn.color = "lightblue";
            }
        }
    }
    GridLayout {
        columns: 3
            anchors.fill: parent
            anchors.margins: 20
            rowSpacing: 20
            columnSpacing: 20
            flow:  width > height ? GridLayout.LeftToRight : GridLayout.TopToBottom
        Button {
            id: button0
            x: 19
            y: 68
            color:"#ff0000"
            onButtonClick:
            {
                buttonClicked(button0);
            }
        }

        Button {
            id: button1
            x: 177
            y: 68
            onButtonClick:
            {
                buttonClicked(button1);
            }
        }

        Button {
            id: button2
            x: 334
            y: 68
            onButtonClick:
            {
                buttonClicked(button2);
            }
        }

        Button {
            id: button3
            x: 19
            y: 171
            onButtonClick:
            {
                buttonClicked(button3);
            }
        }

        Button {
            id: button4
            x: 177
            y: 171
            onButtonClick:
            {
                buttonClicked(button4);
            }
        }

        Button {
            id: button5
            x: 334
            y: 171
            onButtonClick:
            {
                buttonClicked(button5);
            }
        }

        Button {
            id: button6
            x: 19
            y: 273
            onButtonClick:
            {
                buttonClicked(button6);
            }
        }

        Button {
            id: button7
            x: 177
            y: 273
            onButtonClick:
            {
                buttonClicked(button7);
            }
        }

        Button {
            id: button8
            x: 334
            y: 273
            onButtonClick:
            {
                buttonClicked(button8);
            }
        }

        Button {
            id: button9
            x: 19
            y: 375
            onButtonClick:
            {
                buttonClicked(button9);
            }
        }

        Button {
            id: button10
            x: 177
            y: 375
            onButtonClick:
            {
                buttonClicked(button10);
            }
        }

        Button {
            id: button11
            x: 334
            y: 375
            onButtonClick:
            {
                buttonClicked(button11);
            }
        }

        Button {
            id: saveButton
            x: 531
            y: 68
            width: 82
            height: 75
            label: "save"
            onButtonClick:
            {
                appClass.saveState(appClass.getState());
            }
        }

        Button {
            id: loadButton
            x: 531
            y: 171
            width: 82
            height: 75
            label: "load"
            onButtonClick:
            {
                restoreLastSaving(appClass.loadState());
            }
        }
    }
}
