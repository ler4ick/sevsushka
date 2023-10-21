#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QLineEdit>
#include <QPushButton>
#include <QRegExpValidator>
#include <QHBoxLayout>
#include <QButtonGroup>
MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    connect(ui->pushButton, SIGNAL(clicked()), this,
                SLOT(validateFullName_email()));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::validateFullName_email()
{
    //Задание формы ФИО
    QRegExp nameRegExp("^[А-Яа-яЁё]+\\s[А-Яа-яЁё]+\\s[А-Яа-яЁё]+$");
    //берем содержимое строки ФИО
    QString isText = ui->lineEdit_2->text(); //слово из нашей строки для ввода
    // сохраняем значение в переменной
    bool d = nameRegExp.exactMatch(isText);

    //Задание формы e-mail
    QRegExp emailRegExp("^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$");
    //берем содержимое строки e-mail
    isText = ui->lineEdit->text();
    // сохраняем значение в переменной
    bool a = emailRegExp.exactMatch(isText);

    //сохраняем в переменной то, что вытащим из textEdit
    QString is = ui->textEdit->toPlainText();

    //Создание группы из радио-батонов
    QButtonGroup *buttonGroup = new QButtonGroup(this);
    buttonGroup->addButton(ui->radioButton);
    buttonGroup->addButton(ui->radioButton_2);
    buttonGroup->addButton(ui->radioButton_3);
    buttonGroup->addButton(ui->radioButton_4);
    buttonGroup->addButton(ui->radioButton_5);

    //если будут несоответствия, то вылетают сообщения и кнопка блюрится
    if (d==false || a==false || is=="" || buttonGroup->checkedButton() == nullptr){
        QMessageBox msgBox;
        if(d==false){
            msgBox.setText("Ваше ФИО не соответствует стандарту Нурсултана Керимбаева");
            msgBox.setStandardButtons(QMessageBox::Ok);
            msgBox.exec();
            ui->pushButton_1->setDisabled(true);
        }
        else{
            if(a==false){
                msgBox.setText("Ваш e-mail не соответствует стандарту Нурсултана Керимбаева");
                msgBox.setStandardButtons(QMessageBox::Ok);
                msgBox.exec();
                ui->pushButton_1->setDisabled(true);
            }
            else{
                if(is==""){
                    msgBox.setText("Ваш отзыв не соответствует стандарту Нурсултана Керимбаева");
                    msgBox.setStandardButtons(QMessageBox::Ok);
                    msgBox.exec();
                    ui->pushButton_1->setDisabled(true);
                }
                else{
                    msgBox.setText("Выберете оценку от 1 до 5 стандарту Нурсултана Керимбаева");
                    msgBox.setStandardButtons(QMessageBox::Ok);
                    msgBox.exec();
                    ui->pushButton_1->setDisabled(true);
                }
            }
        }
     }
     else{
        //если всё ок, то разблюрить кнопку "Отправить"
        ui->pushButton_1->setDisabled(false);
     }
}
