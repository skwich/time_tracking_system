#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "core/translator.h"

int main(int argc, char* argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine, &QQmlApplicationEngine::objectCreationFailed, &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    core::translator translator;

    engine.loadFromModule("time_tracking_system", "Main");

    return app.exec();
}
