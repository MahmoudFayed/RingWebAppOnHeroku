
/* Copyright (c) 2013-2020 Mahmoud Fayed <msfclipper@yahoo.com> */
extern "C" {
#include "ring.h"
}
#include "gvxymodelmapper.h"

GVXYModelMapper::GVXYModelMapper(QObject * parent,VM *pVM)  : QtCharts::QVXYModelMapper(parent)
{
	this->pVM = pVM;
	this->pParaList = ring_list_new(0);
	strcpy(this->cfirstRowChangedEvent,"");
	strcpy(this->cmodelReplacedEvent,"");
	strcpy(this->crowCountChangedEvent,"");
	strcpy(this->cseriesReplacedEvent,"");
	strcpy(this->cxColumnChangedEvent,"");
	strcpy(this->cyColumnChangedEvent,"");

	QObject::connect(this, SIGNAL(firstRowChanged()),this, SLOT(firstRowChangedSlot()));
	QObject::connect(this, SIGNAL(modelReplaced()),this, SLOT(modelReplacedSlot()));
	QObject::connect(this, SIGNAL(rowCountChanged()),this, SLOT(rowCountChangedSlot()));
	QObject::connect(this, SIGNAL(seriesReplaced()),this, SLOT(seriesReplacedSlot()));
	QObject::connect(this, SIGNAL(xColumnChanged()),this, SLOT(xColumnChangedSlot()));
	QObject::connect(this, SIGNAL(yColumnChanged()),this, SLOT(yColumnChangedSlot()));

}

GVXYModelMapper::~GVXYModelMapper()
{
	ring_list_delete(this->pParaList);
}

void GVXYModelMapper::geteventparameters(void)
{
	void *pPointer;
	pPointer = this->pVM;
	RING_API_RETLIST(this->pParaList);
}


 
void GVXYModelMapper::setfirstRowChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cfirstRowChangedEvent,cStr);
}

void GVXYModelMapper::setmodelReplacedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cmodelReplacedEvent,cStr);
}

void GVXYModelMapper::setrowCountChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->crowCountChangedEvent,cStr);
}

void GVXYModelMapper::setseriesReplacedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cseriesReplacedEvent,cStr);
}

void GVXYModelMapper::setxColumnChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cxColumnChangedEvent,cStr);
}

void GVXYModelMapper::setyColumnChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cyColumnChangedEvent,cStr);
}

 
const char *GVXYModelMapper::getfirstRowChangedEvent(void)
{
	return this->cfirstRowChangedEvent;
}

const char *GVXYModelMapper::getmodelReplacedEvent(void)
{
	return this->cmodelReplacedEvent;
}

const char *GVXYModelMapper::getrowCountChangedEvent(void)
{
	return this->crowCountChangedEvent;
}

const char *GVXYModelMapper::getseriesReplacedEvent(void)
{
	return this->cseriesReplacedEvent;
}

const char *GVXYModelMapper::getxColumnChangedEvent(void)
{
	return this->cxColumnChangedEvent;
}

const char *GVXYModelMapper::getyColumnChangedEvent(void)
{
	return this->cyColumnChangedEvent;
}


void GVXYModelMapper::firstRowChangedSlot()
{
	if (strcmp(this->cfirstRowChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cfirstRowChangedEvent);
}

void GVXYModelMapper::modelReplacedSlot()
{
	if (strcmp(this->cmodelReplacedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cmodelReplacedEvent);
}

void GVXYModelMapper::rowCountChangedSlot()
{
	if (strcmp(this->crowCountChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->crowCountChangedEvent);
}

void GVXYModelMapper::seriesReplacedSlot()
{
	if (strcmp(this->cseriesReplacedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cseriesReplacedEvent);
}

void GVXYModelMapper::xColumnChangedSlot()
{
	if (strcmp(this->cxColumnChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cxColumnChangedEvent);
}

void GVXYModelMapper::yColumnChangedSlot()
{
	if (strcmp(this->cyColumnChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cyColumnChangedEvent);
}

