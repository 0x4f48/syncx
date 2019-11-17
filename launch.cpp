#include <QDebug>
#include "launch.h"

Launch::Launch(QGst::Quick::VideoSurface *s)
{
    surface = s;
    headunit =  new Headunit(surface);
}

Launch::~Launch()
{
}

void Launch::run()
{
    headunit->test_state = 0;
    headunit->startHU();

    while (1)
    {
        QThread::sleep(1);
        if ( headunit->test_state == 1)
        {
            qDebug()<<"terminate detected";
            headunit->test_state = 0;
            headunit->restartHU();
            headunit->startHU();
        }
    }
}
