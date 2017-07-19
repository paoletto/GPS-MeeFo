#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDirIterator>
#include <QCompass>

#include "sats.h"
#include "clippy.h"
//#include "compassfilter.h"

int main(int argc, char *argv[])
{
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    app.setApplicationName(QString("GPSMeeFo"));
    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("Clippy", new Clippy);
    engine.rootContext()->setContextProperty("sats", new MySatsClass);

    /*QObject *rootObject = dynamic_cast<QObject*>(viewer->rootObject());

    QCompass compass;
    CompassFilter filter;
    compass.addfilter(&filter);

    connect(&filter, SIGNAL(azimuthChanged(const QVariant&, const QVariant&)),
            rootObject, SLOT(handleAzimuth(const QVariant&, const QVariant&)));

    compass.start();
    */

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();
}
