#pragma once

#include <QGuiApplication>
#include <QTranslator>

namespace core
{
class translator
{
  public:
    translator()
    {
        if (!tr.load(":/i18n/ru.qm"))
            throw std::runtime_error("translator not loaded");
        QCoreApplication::installTranslator(&tr);
    }

  private:
    QTranslator tr;
};
}; // namespace core