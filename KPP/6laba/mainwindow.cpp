#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    //формируем путь к файлу БД
    QString DBpath = "C:\\Users\\Skory\\Documents\\6laba\\student.db";
    //добавляем нашу БД
    sdb = QSqlDatabase::addDatabase("QSQLITE");
    sdb.setDatabaseName(DBpath);

    //подключаемся
    if(sdb.open()){
        QMessageBox msgBox;
        msgBox.setText("Подключилися");
        msgBox.setStandardButtons(QMessageBox::Ok);
        msgBox.exec();

    }
    else
    {
        QMessageBox::critical(this,tr("SQLite connection"), tr("Unable connect to DB."));
        exit(1);
    }

    //создаем модель
    model = new QSqlTableModel(this, sdb);
    model->setTable("u");
    //задаем режим редактирования при изменении поля
    model->setEditStrategy(QSqlTableModel::OnFieldChange);
    model->select();

    //привязываем QTableView к модели
    ui->tableView->setModel(model);
    int rowCount = model->rowCount();

    // Выводим количество загруженных записей в консоль
    qDebug() << "Количество загруженных записей:" << rowCount;
    //соединяем сигнал нажатия кнопки со слотом удаления записей
    connect(ui->pushButton, SIGNAL(clicked()), SLOT(deleteSelected()));
    connect(ui->pushButton_2, SIGNAL(clicked()), SLOT(edit()));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::deleteSelected()
{
    QModelIndexList indexes = ui->tableView->selectionModel()->selection().indexes();
    QSet<int> *rowsToDelete = new QSet<int>();
    //формируем список строк на удаление
    for (int i = 0; i < indexes.count(); i++)
    {
        QModelIndex index = indexes.at(i);
        rowsToDelete->insert(index.row());
    }

    //удаляем
    QAbstractItemModel *model = ui->tableView->model();
    QSet<int>::iterator i;
    for (i = rowsToDelete->begin(); i != rowsToDelete->end(); ++i)
    {
        model->removeRow(*i);
    }
}

void MainWindow::edit(){
    QModelIndex currentIndex = ui->tableView->currentIndex();
    // Проверяем, что индекс действителен
        if (currentIndex.isValid())
        {
            // Включить редактирование ячеек для выбранной записи
            ui->tableView->edit(currentIndex);
        }
}
