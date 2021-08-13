
/* Copyright (c) 2013-2020 Mahmoud Fayed <msfclipper@yahoo.com> */
extern "C" {
#include "ring.h"
}
#include "gfontdialog.h"

GFontDialog::GFontDialog(QWidget * parent,VM *pVM)  : QFontDialog(parent)
{
	this->pVM = pVM;
	this->pParaList = ring_list_new(0);
	strcpy(this->ccurrentFontChangedEvent,"");
	strcpy(this->cfontSelectedEvent,"");

	QObject::connect(this, SIGNAL(currentFontChanged(const QFont)),this, SLOT(currentFontChangedSlot()));
	QObject::connect(this, SIGNAL(fontSelected(const QFont)),this, SLOT(fontSelectedSlot()));

}

GFontDialog::~GFontDialog()
{
	ring_list_delete(this->pParaList);
}

void GFontDialog::geteventparameters(void)
{
	void *pPointer;
	pPointer = this->pVM;
	RING_API_RETLIST(this->pParaList);
}


 
void GFontDialog::setcurrentFontChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->ccurrentFontChangedEvent,cStr);
}

void GFontDialog::setfontSelectedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cfontSelectedEvent,cStr);
}

 
const char *GFontDialog::getcurrentFontChangedEvent(void)
{
	return this->ccurrentFontChangedEvent;
}

const char *GFontDialog::getfontSelectedEvent(void)
{
	return this->cfontSelectedEvent;
}


void GFontDialog::currentFontChangedSlot()
{
	if (strcmp(this->ccurrentFontChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->ccurrentFontChangedEvent);
}

void GFontDialog::fontSelectedSlot()
{
	if (strcmp(this->cfontSelectedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cfontSelectedEvent);
}

