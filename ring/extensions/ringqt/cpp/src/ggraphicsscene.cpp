
/* Copyright (c) 2013-2020 Mahmoud Fayed <msfclipper@yahoo.com> */
extern "C" {
#include "ring.h"
}
#include "ggraphicsscene.h"

GGraphicsScene::GGraphicsScene(QObject * parent,VM *pVM)  : QGraphicsScene(parent)
{
	this->pVM = pVM;
	this->pParaList = ring_list_new(0);
	strcpy(this->cchangedEvent,"");
	strcpy(this->cfocusItemChangedEvent,"");
	strcpy(this->csceneRectChangedEvent,"");
	strcpy(this->cselectionChangedEvent,"");

	QObject::connect(this, SIGNAL(changed(const QList<QRectF>)),this, SLOT(changedSlot()));
	QObject::connect(this, SIGNAL(focusItemChanged(QGraphicsItem *,QGraphicsItem *,Qt::FocusReason)),this, SLOT(focusItemChangedSlot()));
	QObject::connect(this, SIGNAL(sceneRectChanged(const QRectF)),this, SLOT(sceneRectChangedSlot()));
	QObject::connect(this, SIGNAL(selectionChanged()),this, SLOT(selectionChangedSlot()));

}

GGraphicsScene::~GGraphicsScene()
{
	ring_list_delete(this->pParaList);
}

void GGraphicsScene::geteventparameters(void)
{
	void *pPointer;
	pPointer = this->pVM;
	RING_API_RETLIST(this->pParaList);
}


 
void GGraphicsScene::setchangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cchangedEvent,cStr);
}

void GGraphicsScene::setfocusItemChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cfocusItemChangedEvent,cStr);
}

void GGraphicsScene::setsceneRectChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->csceneRectChangedEvent,cStr);
}

void GGraphicsScene::setselectionChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cselectionChangedEvent,cStr);
}

 
const char *GGraphicsScene::getchangedEvent(void)
{
	return this->cchangedEvent;
}

const char *GGraphicsScene::getfocusItemChangedEvent(void)
{
	return this->cfocusItemChangedEvent;
}

const char *GGraphicsScene::getsceneRectChangedEvent(void)
{
	return this->csceneRectChangedEvent;
}

const char *GGraphicsScene::getselectionChangedEvent(void)
{
	return this->cselectionChangedEvent;
}


void GGraphicsScene::changedSlot()
{
	if (strcmp(this->cchangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cchangedEvent);
}

void GGraphicsScene::focusItemChangedSlot()
{
	if (strcmp(this->cfocusItemChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cfocusItemChangedEvent);
}

void GGraphicsScene::sceneRectChangedSlot()
{
	if (strcmp(this->csceneRectChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->csceneRectChangedEvent);
}

void GGraphicsScene::selectionChangedSlot()
{
	if (strcmp(this->cselectionChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cselectionChangedEvent);
}

