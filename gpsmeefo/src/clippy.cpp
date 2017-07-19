#include "clippy.h"
#include <QDebug>
#include <QGuiApplication>

Clippy::Clippy(QObject *parent) :
    QObject(parent)
{
}

void Clippy::setText( QString copyLocation){
        QClipboard *c = QGuiApplication::clipboard();
        c->setText(copyLocation);
}
