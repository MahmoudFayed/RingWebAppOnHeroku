
/* Copyright (c) 2013-2020 Mahmoud Fayed <msfclipper@yahoo.com> */
extern "C" {
#include "ring.h"
}
#include "ghpiemodelmapper.h"

GHPieModelMapper::GHPieModelMapper(QObject *parent,VM *pVM)  : QtCharts::QHPieModelMapper(parent)
{
	this->pVM = pVM;
	this->pParaList = ring_list_new(0);
	strcpy(this->ccolumnCountChangedEvent,"");
	strcpy(this->cfirstColumnChangedEvent,"");
	strcpy(this->clabelsRowChangedEvent,"");
	strcpy(this->cmodelReplacedEvent,"");
	strcpy(this->cseriesReplacedEvent,"");
	strcpy(this->cvaluesRowChangedEvent,"");

	QObject::connect(this, SIGNAL(columnCountChanged()),this, SLOT(columnCountChangedSlot()));
	QObject::connect(this, SIGNAL(firstColumnChanged()),this, SLOT(firstColumnChangedSlot()));
	QObject::connect(this, SIGNAL(labelsRowChanged()),this, SLOT(labelsRowChangedSlot()));
	QObject::connect(this, SIGNAL(modelReplaced()),this, SLOT(modelReplacedSlot()));
	QObject::connect(this, SIGNAL(seriesReplaced()),this, SLOT(seriesReplacedSlot()));
	QObject::connect(this, SIGNAL(valuesRowChanged()),this, SLOT(valuesRowChangedSlot()));

}

GHPieModelMapper::~GHPieModelMapper()
{
	ring_list_delete(this->pParaList);
}

void GHPieModelMapper::geteventparameters(void)
{
	void *pPointer;
	pPointer = this->pVM;
	RING_API_RETLIST(this->pParaList);
}


 
void GHPieModelMapper::setcolumnCountChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->ccolumnCountChangedEvent,cStr);
}

void GHPieModelMapper::setfirstColumnChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cfirstColumnChangedEvent,cStr);
}

void GHPieModelMapper::setlabelsRowChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->clabelsRowChangedEvent,cStr);
}

void GHPieModelMapper::setmodelReplacedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cmodelReplacedEvent,cStr);
}

void GHPieModelMapper::setseriesReplacedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cseriesReplacedEvent,cStr);
}

void GHPieModelMapper::setvaluesRowChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cvaluesRowChangedEvent,cStr);
}

 
const char *GHPieModelMapper::getcolumnCountChangedEvent(void)
{
	return this->ccolumnCountChangedEvent;
}

const char *GHPieModelMapper::getfirstColumnChangedEvent(void)
{
	return this->cfirstColumnChangedEvent;
}

const char *GHPieModelMapper::getlabelsRowChangedEvent(void)
{
	return this->clabelsRowChangedEvent;
}

const char *GHPieModelMapper::getmodelReplacedEvent(void)
{
	return this->cmodelReplacedEvent;
}

const char *GHPieModelMapper::getseriesReplacedEvent(void)
{
	return this->cseriesReplacedEvent;
}

const char *GHPieModelMapper::getvaluesRowChangedEvent(void)
{
	return this->cvaluesRowChangedEvent;
}


void GHPieModelMapper::columnCountChangedSlot()
{
	if (strcmp(this->ccolumnCountChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->ccolumnCountChangedEvent);
}

void GHPieModelMapper::firstColumnChangedSlot()
{
	if (strcmp(this->cfirstColumnChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cfirstColumnChangedEvent);
}

void GHPieModelMapper::labelsRowChangedSlot()
{
	if (strcmp(this->clabelsRowChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->clabelsRowChangedEvent);
}

void GHPieModelMapper::modelReplacedSlot()
{
	if (strcmp(this->cmodelReplacedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cmodelReplacedEvent);
}

void GHPieModelMapper::seriesReplacedSlot()
{
	if (strcmp(this->cseriesReplacedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cseriesReplacedEvent);
}

void GHPieModelMapper::valuesRowChangedSlot()
{
	if (strcmp(this->cvaluesRowChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cvaluesRowChangedEvent);
}

