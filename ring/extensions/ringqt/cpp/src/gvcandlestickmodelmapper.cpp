
/* Copyright (c) 2013-2020 Mahmoud Fayed <msfclipper@yahoo.com> */
extern "C" {
#include "ring.h"
}
#include "gvcandlestickmodelmapper.h"

GVCandlestickModelMapper::GVCandlestickModelMapper(QObject * parent,VM *pVM)  : QtCharts::QVCandlestickModelMapper(parent)
{
	this->pVM = pVM;
	this->pParaList = ring_list_new(0);
	strcpy(this->ccloseRowChangedEvent,"");
	strcpy(this->cfirstSetColumnChangedEvent,"");
	strcpy(this->chighRowChangedEvent,"");
	strcpy(this->clastSetColumnChangedEvent,"");
	strcpy(this->clowRowChangedEvent,"");
	strcpy(this->copenRowChangedEvent,"");
	strcpy(this->ctimestampRowChangedEvent,"");

	QObject::connect(this, SIGNAL(closeRowChanged()),this, SLOT(closeRowChangedSlot()));
	QObject::connect(this, SIGNAL(firstSetColumnChanged()),this, SLOT(firstSetColumnChangedSlot()));
	QObject::connect(this, SIGNAL(highRowChanged()),this, SLOT(highRowChangedSlot()));
	QObject::connect(this, SIGNAL(lastSetColumnChanged()),this, SLOT(lastSetColumnChangedSlot()));
	QObject::connect(this, SIGNAL(lowRowChanged()),this, SLOT(lowRowChangedSlot()));
	QObject::connect(this, SIGNAL(openRowChanged()),this, SLOT(openRowChangedSlot()));
	QObject::connect(this, SIGNAL(timestampRowChanged()),this, SLOT(timestampRowChangedSlot()));

}

GVCandlestickModelMapper::~GVCandlestickModelMapper()
{
	ring_list_delete(this->pParaList);
}

void GVCandlestickModelMapper::geteventparameters(void)
{
	void *pPointer;
	pPointer = this->pVM;
	RING_API_RETLIST(this->pParaList);
}


 
void GVCandlestickModelMapper::setcloseRowChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->ccloseRowChangedEvent,cStr);
}

void GVCandlestickModelMapper::setfirstSetColumnChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cfirstSetColumnChangedEvent,cStr);
}

void GVCandlestickModelMapper::sethighRowChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->chighRowChangedEvent,cStr);
}

void GVCandlestickModelMapper::setlastSetColumnChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->clastSetColumnChangedEvent,cStr);
}

void GVCandlestickModelMapper::setlowRowChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->clowRowChangedEvent,cStr);
}

void GVCandlestickModelMapper::setopenRowChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->copenRowChangedEvent,cStr);
}

void GVCandlestickModelMapper::settimestampRowChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->ctimestampRowChangedEvent,cStr);
}

 
const char *GVCandlestickModelMapper::getcloseRowChangedEvent(void)
{
	return this->ccloseRowChangedEvent;
}

const char *GVCandlestickModelMapper::getfirstSetColumnChangedEvent(void)
{
	return this->cfirstSetColumnChangedEvent;
}

const char *GVCandlestickModelMapper::gethighRowChangedEvent(void)
{
	return this->chighRowChangedEvent;
}

const char *GVCandlestickModelMapper::getlastSetColumnChangedEvent(void)
{
	return this->clastSetColumnChangedEvent;
}

const char *GVCandlestickModelMapper::getlowRowChangedEvent(void)
{
	return this->clowRowChangedEvent;
}

const char *GVCandlestickModelMapper::getopenRowChangedEvent(void)
{
	return this->copenRowChangedEvent;
}

const char *GVCandlestickModelMapper::gettimestampRowChangedEvent(void)
{
	return this->ctimestampRowChangedEvent;
}


void GVCandlestickModelMapper::closeRowChangedSlot()
{
	if (strcmp(this->ccloseRowChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->ccloseRowChangedEvent);
}

void GVCandlestickModelMapper::firstSetColumnChangedSlot()
{
	if (strcmp(this->cfirstSetColumnChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cfirstSetColumnChangedEvent);
}

void GVCandlestickModelMapper::highRowChangedSlot()
{
	if (strcmp(this->chighRowChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->chighRowChangedEvent);
}

void GVCandlestickModelMapper::lastSetColumnChangedSlot()
{
	if (strcmp(this->clastSetColumnChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->clastSetColumnChangedEvent);
}

void GVCandlestickModelMapper::lowRowChangedSlot()
{
	if (strcmp(this->clowRowChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->clowRowChangedEvent);
}

void GVCandlestickModelMapper::openRowChangedSlot()
{
	if (strcmp(this->copenRowChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->copenRowChangedEvent);
}

void GVCandlestickModelMapper::timestampRowChangedSlot()
{
	if (strcmp(this->ctimestampRowChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->ctimestampRowChangedEvent);
}

