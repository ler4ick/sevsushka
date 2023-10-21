#ifndef FILE_H
#define FILE_H

#include <QtGui/QGuiApplication>
#include <QFile>
#include <QTextStream>


class File : public QObject
{
    Q_OBJECT

public:
    File(QObject *parent = 0);

    int curResult=0;
    Q_PROPERTY(int curResult READ getState READ loadState WRITE setState)
    Q_INVOKABLE void saveState(int state);
    Q_INVOKABLE int loadState();
    Q_INVOKABLE int setState(int state);
    Q_INVOKABLE int getState();
    ~File();
private:
    QString FILENAME;
};

#endif // FILE_H


