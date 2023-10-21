#include "file.h"

File::File(QObject *parent):
    QObject(parent)
{
    this->FILENAME = QString("C:\\Users\\Skory\\Documents\\4laba\\text1.txt");
}

File::~File()
{}

void File::saveState(int state)
{
    QFile file(FILENAME);
    //curResult = getResult();
    if (file.open(QFile::ReadWrite | QIODevice::Truncate)) {
        //QTextStream inStream(&file);
        //curResult += result.toInt();
        QTextStream outStream(&file);
        outStream << state;
    }
    file.close();
}

int File::loadState()
{
    QFile file(FILENAME);
    if (file.open(QFile::ReadWrite)) {
        QTextStream inStream(&file);
        curResult = inStream.readAll().toInt();
    }
    file.close();
    return curResult;
}

int File::setState(int state)
{
    curResult = state;
    return curResult;
}

int File::getState()
{
    return curResult;
}
