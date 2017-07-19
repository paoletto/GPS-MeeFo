#ifndef COMPASSFILTER_H
#define COMPASSFILTER_H

#include <QtSensors/QCompassFilter>
#include <QVariant>

class CompassFilter : public QObject, public QCompassFilter

{
    Q_OBJECT

    public:
    CompassFilter();
    bool filter(QCompassReading *reading);

    signals:
    void azimuthChanged(const QVariant &azimuth, const QVariant &calibrationLevel);

};

#endif // COMPASSFILTER_H
