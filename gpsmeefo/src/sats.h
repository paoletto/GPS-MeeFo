#ifndef SATS_H
#define SATS_H

#include <QObject>
#include <QtCore>

#include <QtPositioning/qgeosatelliteinfosource.h>
#include <QtPositioning/qgeosatelliteinfo.h>

class QGeoSatelliteInfoSource;
class QGeoSatelliteInfo;


class MySatsClass : public QObject
{
    Q_OBJECT

private:

    QGeoSatelliteInfoSource* m_sats;
    QGeoSatelliteInfo m_satsinfo;
    QString yourSatsInView;
    QString yourSatsInUse;
    QList<QGeoSatelliteInfo> satellitesInView;
    QList<QGeoSatelliteInfo> satellitesInUse;


public:

    explicit MySatsClass(QObject *parent = 0);

    Q_INVOKABLE QString getSatsInView() const;
    Q_INVOKABLE QString getSatsInUse() const;
    Q_INVOKABLE QList<QObject*> getViewData() const;
    Q_INVOKABLE QList<QObject*> getUseData() const;


signals:

public slots:
    void satellitesInViewUpdated(const QList<QGeoSatelliteInfo> &);
    void satellitesInUseUpdated(const QList<QGeoSatelliteInfo> &);
};

#endif // SATS_H
