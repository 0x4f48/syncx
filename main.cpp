#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml/QQmlContext>
//#include <QtQuick/QQuickView>

#include <QGst/Init>
#include <QGst/Quick/VideoSurface>

#include "launch.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QGst::init(&argc, &argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    QGst::Quick::VideoSurface *surface = new QGst::Quick::VideoSurface;
    engine.rootContext()->setContextProperty(QLatin1String("videoSurface1"), surface);

    Launch *objLaunch = new Launch(surface);
    objLaunch->start();

    return app.exec();
}
