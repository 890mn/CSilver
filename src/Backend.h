#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QJsonDocument>
#include <QJsonObject>

class Backend : public QObject
{
    Q_OBJECT

public:
    explicit Backend(QObject *parent = nullptr);

    Q_INVOKABLE void checkForUpdates();

signals:
    void updateAvailable(const QString &latestVersion, const QString &url);
    void noUpdateAvailable();

private slots:
    void onReplyFinished(QNetworkReply* reply);

private:
    QNetworkAccessManager* networkManager;
};

#endif
