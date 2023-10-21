#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QLineEdit>
#include <QPushButton>
MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    connect(ui->pushButton, SIGNAL(clicked()), this,
            SLOT(addWord()));
    connect(ui->label_3, SIGNAL(banUser()), ui->pushButton,
            SLOT(hide()));
    connect(ui->plainTextEdit, SIGNAL(textChanged()), this,
            SLOT(copying()));
    connect(ui->plainTextEdit_2, SIGNAL(textChanged()), this,
            SLOT(counting()));
    connect(ui->plainTextEdit, &QPlainTextEdit::textChanged, this, &MainWindow::checkCharacterCount);

}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::addWord()
{
    QString newWord = ui->lineEdit->text(); //слово из нашей строки для ввода
    setWindowTitle(newWord); // Установка заголовка окна на новое слово
}

void MainWindow::copying() //примечание: слово копируется только после нажатого пробела
{
    QString newWord2 = ui->plainTextEdit->toPlainText(); //присваиваем переменной символы, введенные в первый plainText, до пробела
    QString  modifiedWord = newWord2; //модицифицированное слово, которое пойдет во второй plainText
    QString lastchar = newWord2.right(1).at(0); //присваиваем lastchar'y последний символ вводимой строки, ищем пробел
    modifiedWord.replace("a", "*"); //замена а на *
    if(lastchar == " ") //если нашли пробел, т.е. конец слова, то пишем модифицированное слово во второй plainText
    {
        ui->plainTextEdit_2->setPlainText(modifiedWord);
    }
}

void MainWindow::counting(){
    QString text = ui->plainTextEdit_2->toPlainText();
    int starCount = text.count('*');
    ui->label_3->setText(QString("Count: %1").arg(starCount));
}

void MainWindow::checkCharacterCount()
{
    QString text = ui->plainTextEdit->toPlainText();
    int starCount = text.count('a');
    if (starCount > 10)
    {
        ui->plainTextEdit->setDisabled(true);
    }
    else
    {
        ui->plainTextEdit->setDisabled(false);
    }
}
