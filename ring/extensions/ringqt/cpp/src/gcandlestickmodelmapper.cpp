
/* Copyright (c) 2013-2020 Mahmoud Fayed <msfclipper@yahoo.com> */
extern "C" {
#include "ring.h"
}
#include "gcandlestickmodelmapper.h"

GCandlestickModelMapper::GCandlestickModelMapper(QObject *parent,VM *pVM)  : QtCharts::QCandlestickModelMapper(parent)
{
	this->pVM = pVM;
	this->pParaList = ring_list_new(0);
	strcpy(this->cmodelReplacedEvent,"");
	strcpy(this->cseriesReplacedEvent,"");

	QObject::connect(this, SIGNAL(modelReplaced()),this, SLOT(modelReplacedSlot()));
	QObject::connect(this, SIGNAL(seriesReplaced()),this, SLOT(seriesReplacedSlot()));

}

GCandlestickModelMapper::~GCandlestickModelMapper()
{
	ring_list_delete(this->pParaList);
}

void GCandlestickModelMapper::geteventparameters(void)
{
	void *pPointer;
	pPointer = this->pVM;
	RING_API_RETLIST(this->pParaList);
}


 
void GCandlestickModelMapper::setmodelReplacedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cmodelReplacedEvent,cStr);
}

void GCandlestickModelMapper::setseriesReplacedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cseriesReplacedEvent,cStr);
}

 
const char *GCandlestickModelMapper::getmodelReplacedEvent(void)
{
	return this->cmodelReplacedEvent;
}

const char *GCandlestickModelMapper::getseriesReplacedEvent(void)
{
	return this->cseriesReplacedEvent;
}


void GCandlestickModelMapper::modelReplacedSlot()
{
	if (strcmp(this->cmodelReplacedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cmodelReplacedEvent);
}

void GCandlestickModelMapper::seriesReplacedSlot()
{
	if (strcmp(this->cseriesReplacedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cseriesReplacedEvent);
}

