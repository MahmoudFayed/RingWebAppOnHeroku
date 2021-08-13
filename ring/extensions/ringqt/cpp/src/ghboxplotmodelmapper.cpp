
/* Copyright (c) 2013-2020 Mahmoud Fayed <msfclipper@yahoo.com> */
extern "C" {
#include "ring.h"
}
#include "ghboxplotmodelmapper.h"

GHBoxPlotModelMapper::GHBoxPlotModelMapper(QObject *parent,VM *pVM)  : QtCharts::QHBoxPlotModelMapper(parent)
{
	this->pVM = pVM;
	this->pParaList = ring_list_new(0);
	strcpy(this->ccolumnCountChangedEvent,"");
	strcpy(this->cfirstBoxSetRowChangedEvent,"");
	strcpy(this->cfirstColumnChangedEvent,"");
	strcpy(this->clastBoxSetRowChangedEvent,"");
	strcpy(this->cmodelReplacedEvent,"");
	strcpy(this->cseriesReplacedEvent,"");

	QObject::connect(this, SIGNAL(columnCountChanged()),this, SLOT(columnCountChangedSlot()));
	QObject::connect(this, SIGNAL(firstBoxSetRowChanged()),this, SLOT(firstBoxSetRowChangedSlot()));
	QObject::connect(this, SIGNAL(firstColumnChanged()),this, SLOT(firstColumnChangedSlot()));
	QObject::connect(this, SIGNAL(lastBoxSetRowChanged()),this, SLOT(lastBoxSetRowChangedSlot()));
	QObject::connect(this, SIGNAL(modelReplaced()),this, SLOT(modelReplacedSlot()));
	QObject::connect(this, SIGNAL(seriesReplaced()),this, SLOT(seriesReplacedSlot()));

}

GHBoxPlotModelMapper::~GHBoxPlotModelMapper()
{
	ring_list_delete(this->pParaList);
}

void GHBoxPlotModelMapper::geteventparameters(void)
{
	void *pPointer;
	pPointer = this->pVM;
	RING_API_RETLIST(this->pParaList);
}


 
void GHBoxPlotModelMapper::setcolumnCountChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->ccolumnCountChangedEvent,cStr);
}

void GHBoxPlotModelMapper::setfirstBoxSetRowChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cfirstBoxSetRowChangedEvent,cStr);
}

void GHBoxPlotModelMapper::setfirstColumnChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cfirstColumnChangedEvent,cStr);
}

void GHBoxPlotModelMapper::setlastBoxSetRowChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->clastBoxSetRowChangedEvent,cStr);
}

void GHBoxPlotModelMapper::setmodelReplacedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cmodelReplacedEvent,cStr);
}

void GHBoxPlotModelMapper::setseriesReplacedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cseriesReplacedEvent,cStr);
}

 
const char *GHBoxPlotModelMapper::getcolumnCountChangedEvent(void)
{
	return this->ccolumnCountChangedEvent;
}

const char *GHBoxPlotModelMapper::getfirstBoxSetRowChangedEvent(void)
{
	return this->cfirstBoxSetRowChangedEvent;
}

const char *GHBoxPlotModelMapper::getfirstColumnChangedEvent(void)
{
	return this->cfirstColumnChangedEvent;
}

const char *GHBoxPlotModelMapper::getlastBoxSetRowChangedEvent(void)
{
	return this->clastBoxSetRowChangedEvent;
}

const char *GHBoxPlotModelMapper::getmodelReplacedEvent(void)
{
	return this->cmodelReplacedEvent;
}

const char *GHBoxPlotModelMapper::getseriesReplacedEvent(void)
{
	return this->cseriesReplacedEvent;
}


void GHBoxPlotModelMapper::columnCountChangedSlot()
{
	if (strcmp(this->ccolumnCountChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->ccolumnCountChangedEvent);
}

void GHBoxPlotModelMapper::firstBoxSetRowChangedSlot()
{
	if (strcmp(this->cfirstBoxSetRowChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cfirstBoxSetRowChangedEvent);
}

void GHBoxPlotModelMapper::firstColumnChangedSlot()
{
	if (strcmp(this->cfirstColumnChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cfirstColumnChangedEvent);
}

void GHBoxPlotModelMapper::lastBoxSetRowChangedSlot()
{
	if (strcmp(this->clastBoxSetRowChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->clastBoxSetRowChangedEvent);
}

void GHBoxPlotModelMapper::modelReplacedSlot()
{
	if (strcmp(this->cmodelReplacedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cmodelReplacedEvent);
}

void GHBoxPlotModelMapper::seriesReplacedSlot()
{
	if (strcmp(this->cseriesReplacedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cseriesReplacedEvent);
}

