#ifndef MYLABEL_H
#define MYLABEL_H

#include <QLabel>

class MyLabel : public QLabel //наследуем класс
{
    Q_OBJECT
private:
    int value = 0; //текущее значение баллов
    const int banLimit = 10;  //максимальное количество штрафов

public:
         MyLabel(QWidget *parent=0);
public slots:
         void incValue();
signals:
         void banUser();
};

#endif // MYLABEL_H

