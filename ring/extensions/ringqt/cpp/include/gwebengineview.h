
/* Copyright (c) 2013-2020 Mahmoud Fayed <msfclipper@yahoo.com> */
#ifndef GWEBENGINEVIEW_H
#define GWEBENGINEVIEW_H
#include <QApplication>
#include "ringqt.h"
#include <QWebEngineView>
extern "C" {
#include "ring.h"
}

class GWebEngineView : public QWebEngineView
{

  Q_OBJECT

  public:

    struct VM *pVM;

    struct List *pParaList;

    char cloadFinishedEvent[RINGQT_EVENT_SIZE];
    char cloadProgressEvent[RINGQT_EVENT_SIZE];
    char cloadStartedEvent[RINGQT_EVENT_SIZE];
    char cselectionChangedEvent[RINGQT_EVENT_SIZE];
    char ctitleChangedEvent[RINGQT_EVENT_SIZE];
    char curlChangedEvent[RINGQT_EVENT_SIZE];


    GWebEngineView(QWidget *parent,VM *pVM );

    ~GWebEngineView();

    void geteventparameters(void) ;

    void setloadFinishedEvent(const char *cStr);
    void setloadProgressEvent(const char *cStr);
    void setloadStartedEvent(const char *cStr);
    void setselectionChangedEvent(const char *cStr);
    void settitleChangedEvent(const char *cStr);
    void seturlChangedEvent(const char *cStr);


    const char *getloadFinishedEvent(void);
    const char *getloadProgressEvent(void);
    const char *getloadStartedEvent(void);
    const char *getselectionChangedEvent(void);
    const char *gettitleChangedEvent(void);
    const char *geturlChangedEvent(void);


  public slots:

    void loadFinishedSlot();
    void loadProgressSlot();
    void loadStartedSlot();
    void selectionChangedSlot();
    void titleChangedSlot();
    void urlChangedSlot();

};

#endif

