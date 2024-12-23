#include "Backend.h"
#include <QDebug>
#include <QJsonDocument>
#include <QJsonObject>
#include <QUrl>

Backend::Backend(QObject *parent) : QObject(parent), networkManager(new QNetworkAccessManager(this))
{
    connect(networkManager, &QNetworkAccessManager::finished, this, &Backend::onReplyFinished);
}

void Backend::checkForUpdates()
{
    QUrl releasesUrl("https://github.com/890mn/CSilver/releases");

    QNetworkRequest request(releasesUrl);
    request.setHeader(QNetworkRequest::UserAgentHeader, "CSDL-UpdateChecker");
    networkManager->get(request);
}

void Backend::onReplyFinished(QNetworkReply* reply)
{
    if (reply->error() != QNetworkReply::NoError) {
        qWarning() << "Network error:" << reply->errorString();
        reply->deleteLater();
        return;
    }

    QString htmlContent = reply->readAll();

    // 使用正则表达式提取最新版本号
    QRegularExpression versionRegex(R"(/releases/tag/([\w.]+))");
    QRegularExpressionMatch match = versionRegex.match(htmlContent);

    if (match.hasMatch()) {
        QString latestVersion = match.captured(1);
        QString releaseUrl = "https://github.com/890mn/CSilver/releases/tag/" + latestVersion;

        QString currentVersion = PROJECT_VERSION;
        if (latestVersion > currentVersion) {
            emit updateAvailable(latestVersion, releaseUrl);
        } else {
            emit noUpdateAvailable();
        }
    } else {
        qWarning() << "Network error:" << reply->errorString();
        return;
    }
    reply->deleteLater();
}
