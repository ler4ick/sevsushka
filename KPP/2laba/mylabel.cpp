#include "mylabel.h"

MyLabel::MyLabel(QWidget *parent)
    : QLabel(parent)
{
    /**/
}

void MyLabel::incValue()
{
    if (++value > banLimit)
    {
        emit banUser();
    }
    this->setText(QString::number(value));
}

