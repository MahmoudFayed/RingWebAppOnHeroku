/* Copyright (c) 2024 Mahmoud Fayed <msfclipper@yahoo.com> */

#include "ring.h"

#ifdef _WIN32
	#include "windows.h"
	#include "stdio.h"
#endif

#define INPUT_RECORD_COUNT    128

RING_FUNC(ring_enablemouse)
{
#ifndef _WIN32
	printf("\x1b[?1049h\x1b[0m\x1b[2J\x1b[?1003h\x1b[?1015h\x1b[?1006h\x1b[?25l");
	fflush(stdout);
#endif
}

RING_FUNC(ring_disablemouse)
{
#ifndef _WIN32
	printf("\x1b[0m\x1b[2J\x1b[?1049l\x1b[?1003l\x1b[?1015l\x1b[?1006l\x1b[?25h");
	fflush(stdout);
#endif
}

RING_FUNC(ring_getmouseinfo)
{

	int lMouseEvent,nMouseX,nMouseY,nMouseB,nMouseBtnState,nControlKey,nEventFlags,nWheelDirection;
	List *pList;

	lMouseEvent = 0;

	pList = RING_API_NEWLIST ;

#ifdef _WIN32

	INPUT_RECORD ir[INPUT_RECORD_COUNT];
	HANDLE hStdInput  = NULL;
	HANDLE hStdOutput = NULL;

	DWORD nRead;      
	DWORD nEvents;                                          
  
	hStdInput=GetStdHandle(STD_INPUT_HANDLE);
	hStdOutput=GetStdHandle(STD_OUTPUT_HANDLE);

	SetConsoleMode(hStdInput,ENABLE_MOUSE_INPUT|ENABLE_EXTENDED_FLAGS);

	GetNumberOfConsoleInputEvents(hStdInput,&nEvents);


	if (nEvents > 0) {

		if (nEvents > INPUT_RECORD_COUNT) 
			ReadConsoleInput(hStdInput,ir,INPUT_RECORD_COUNT,&nRead);  
		else
			PeekConsoleInput(hStdInput,ir,INPUT_RECORD_COUNT,&nRead);   
              
		for(size_t i=0;i<nRead;i++)                                
		{                                                          
			if (ir[i].EventType == MOUSE_EVENT)                                
			{                                                                  
				lMouseEvent = 1;                 
				nMouseX = ir[i].Event.MouseEvent.dwMousePosition.X + 1;
				nMouseY = ir[i].Event.MouseEvent.dwMousePosition.Y + 1;
				nMouseB = (int)ir[i].Event.MouseEvent.dwButtonState & 0x07 ;
				nMouseBtnState = ir[i].Event.MouseEvent.dwButtonState ;
				nControlKey = ir[i].Event.MouseEvent.dwControlKeyState;
				nEventFlags = ir[i].Event.MouseEvent.dwEventFlags;
				// Wheel Direction (0 = Down  1 = Up)
				nWheelDirection = (nEventFlags == MOUSE_WHEELED) && (nMouseBtnState > 0);
			} 
		}

	}

#endif

	ring_list_adddouble_gc(RING_API_STATE,pList,lMouseEvent);
	ring_list_adddouble_gc(RING_API_STATE,pList,nMouseX);
	ring_list_adddouble_gc(RING_API_STATE,pList,nMouseY);
	ring_list_adddouble_gc(RING_API_STATE,pList,nMouseB);
	ring_list_adddouble_gc(RING_API_STATE,pList,nEventFlags);
	ring_list_adddouble_gc(RING_API_STATE,pList,nWheelDirection);
	ring_list_adddouble_gc(RING_API_STATE,pList,nMouseBtnState);
	ring_list_adddouble_gc(RING_API_STATE,pList,nControlKey);

#ifdef _WIN32
	ring_list_adddouble_gc(RING_API_STATE,pList,nEvents);
#else
	ring_list_adddouble_gc(RING_API_STATE,pList,0.0);
#endif
	RING_API_RETLIST(pList);

}