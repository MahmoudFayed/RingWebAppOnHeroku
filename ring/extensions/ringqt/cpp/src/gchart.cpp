
/* Copyright (c) 2013-2020 Mahmoud Fayed <msfclipper@yahoo.com> */
extern "C" {
#include "ring.h"
}
#include "gchart.h"

GChart::GChart(QGraphicsItem *x,Qt::WindowFlags parent,VM *pVM)  : QtCharts::QChart(x,parent)
{
	this->pVM = pVM;
	this->pParaList = ring_list_new(0);
	strcpy(this->cplotAreaChangedEvent,"");

	QObject::connect(this, SIGNAL(plotAreaChanged(const QRectF)),this, SLOT(plotAreaChangedSlot()));

}

GChart::~GChart()
{
	ring_list_delete(this->pParaList);
}

void GChart::geteventparameters(void)
{
	void *pPointer;
	pPointer = this->pVM;
	RING_API_RETLIST(this->pParaList);
}


 
void GChart::setplotAreaChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cplotAreaChangedEvent,cStr);
}

 
const char *GChart::getplotAreaChangedEvent(void)
{
	return this->cplotAreaChangedEvent;
}


void GChart::plotAreaChangedSlot()
{
	if (strcmp(this->cplotAreaChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cplotAreaChangedEvent);
}

