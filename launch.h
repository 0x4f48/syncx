#ifndef LAUNCH_H
#define LAUNCH_H

#include <QObject>
#include <QThread>
#include "headunit.h"

class Launch : public QThread
{
    Q_OBJECT
protected:
    void run();
public:
    Launch(QGst::Quick::VideoSurface *s);
    ~Launch();
private:
    Headunit *headunit;
    QGst::Quick::VideoSurface *surface;
};

#endif // LAUNCH_H
