
/* Copyright (c) 2013-2020 Mahmoud Fayed <msfclipper@yahoo.com> */
extern "C" {
#include "ring.h"
}
#include "gtexttospeech.h"

GTextToSpeech::GTextToSpeech(QObject *parent,VM *pVM)  : QTextToSpeech(parent)
{
	this->pVM = pVM;
	this->pParaList = ring_list_new(0);
	strcpy(this->clocaleChangedEvent,"");
	strcpy(this->cpitchChangedEvent,"");
	strcpy(this->crateChangedEvent,"");
	strcpy(this->cstateChangedEvent,"");
	strcpy(this->cvoiceChangedEvent,"");
	strcpy(this->cvolumeChangedEvent,"");

	QObject::connect(this, SIGNAL(localeChanged(const QLocale)),this, SLOT(localeChangedSlot()));
	QObject::connect(this, SIGNAL(pitchChanged(double)),this, SLOT(pitchChangedSlot()));
	QObject::connect(this, SIGNAL(rateChanged(double)),this, SLOT(rateChangedSlot()));
	QObject::connect(this, SIGNAL(stateChanged(QTextToSpeech::State)),this, SLOT(stateChangedSlot()));
	QObject::connect(this, SIGNAL(voiceChanged(const QVoice)),this, SLOT(voiceChangedSlot()));
	QObject::connect(this, SIGNAL(volumeChanged(double)),this, SLOT(volumeChangedSlot()));

}

GTextToSpeech::~GTextToSpeech()
{
	ring_list_delete(this->pParaList);
}

void GTextToSpeech::geteventparameters(void)
{
	void *pPointer;
	pPointer = this->pVM;
	RING_API_RETLIST(this->pParaList);
}


 
void GTextToSpeech::setlocaleChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->clocaleChangedEvent,cStr);
}

void GTextToSpeech::setpitchChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cpitchChangedEvent,cStr);
}

void GTextToSpeech::setrateChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->crateChangedEvent,cStr);
}

void GTextToSpeech::setstateChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cstateChangedEvent,cStr);
}

void GTextToSpeech::setvoiceChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cvoiceChangedEvent,cStr);
}

void GTextToSpeech::setvolumeChangedEvent(const char *cStr)
{
	if (strlen(cStr)<100)
		strcpy(this->cvolumeChangedEvent,cStr);
}

 
const char *GTextToSpeech::getlocaleChangedEvent(void)
{
	return this->clocaleChangedEvent;
}

const char *GTextToSpeech::getpitchChangedEvent(void)
{
	return this->cpitchChangedEvent;
}

const char *GTextToSpeech::getrateChangedEvent(void)
{
	return this->crateChangedEvent;
}

const char *GTextToSpeech::getstateChangedEvent(void)
{
	return this->cstateChangedEvent;
}

const char *GTextToSpeech::getvoiceChangedEvent(void)
{
	return this->cvoiceChangedEvent;
}

const char *GTextToSpeech::getvolumeChangedEvent(void)
{
	return this->cvolumeChangedEvent;
}


void GTextToSpeech::localeChangedSlot()
{
	if (strcmp(this->clocaleChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->clocaleChangedEvent);
}

void GTextToSpeech::pitchChangedSlot()
{
	if (strcmp(this->cpitchChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cpitchChangedEvent);
}

void GTextToSpeech::rateChangedSlot()
{
	if (strcmp(this->crateChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->crateChangedEvent);
}

void GTextToSpeech::stateChangedSlot()
{
	if (strcmp(this->cstateChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cstateChangedEvent);
}

void GTextToSpeech::voiceChangedSlot()
{
	if (strcmp(this->cvoiceChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cvoiceChangedEvent);
}

void GTextToSpeech::volumeChangedSlot()
{
	if (strcmp(this->cvolumeChangedEvent,"")==0)
		return ;

	ring_vm_runcode(this->pVM,this->cvolumeChangedEvent);
}

