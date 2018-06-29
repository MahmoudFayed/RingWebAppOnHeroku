/*
	This sample is based on C Tutorials 
	from : http://www.lighthouse3d.com/tutorials/glut-tutorial/
*/

load "freeglut.ring"
load "opengl21lib.ring"


// angle of rotation for the camera direction
angle = 0.0

// actual vector representing the camera's direction
lx=0.0 lz=-1.0

// XZ position of the camera
x=0.0  z=5.0

// the key states. These variables will be zero
//when no key is being presses
deltaAngle = 0.0
deltaMove = 0
xOrigin = -1

// Constant definitions for Menus
C_RED  = 1
C_GREEN = 2
C_BLUE = 3
C_ORANGE = 4

C_FILL = 5
C_LINE = 6

// Pop up menu identifiers
fillMenu=NULL
fontMenu=NULL
mainMenu=NULL
colorMenu=NULL

// color for the nose
red = 1.0
blue=0.5
green=0.5

// scale of snowman
scale = 1.0

// menu status
menuFlag = 0

// default font
font = GLUT_BITMAP_8_BY_13

C_INT_GLUT_BITMAP_8_BY_13 = 7
C_INT_GLUT_BITMAP_9_BY_15 = 8
C_INT_GLUT_BITMAP_TIMES_ROMAN_10  = 9
C_INT_GLUT_BITMAP_TIMES_ROMAN_24  = 10
C_INT_GLUT_BITMAP_HELVETICA_10  = 11
C_INT_GLUT_BITMAP_HELVETICA_12  = 12
C_INT_GLUT_BITMAP_HELVETICA_18  = 13

// width and height of the window
h = 0
w = 0

// variables to compute frames per second
frame=0
time=0
timebase=0
s = ""
currentmode = ""

// this string keeps the last good setting
// for the game mode
gameModeString = "640x480"

func changeSize
	w = glutEventWidth()
	h = glutEventHeight()

	// Prevent a divide by zero, when window is too short
	// (you cant make a window of zero width).
	if h = 0
		h = 1
	ok

	ratio =  w * 1.0 / h

	// Use the Projection Matrix
	glMatrixMode(GL_PROJECTION)

	// Reset Matrix
	glLoadIdentity()

	// Set the viewport to be the entire window
	glViewport(0, 0, w, h)

	// Set the correct perspective.
	gluPerspective(45.0, ratio, 0.1, 100.0)

	// Get Back to the Modelview
	glMatrixMode(GL_MODELVIEW)

func drawSnowMan

	glScalef(scale, scale, scale)
	glColor3f(1.0, 1.0, 1.0)

// Draw Body
	glTranslatef(0.0 ,0.75, 0.0)
	glutSolidSphere(0.75,20,20)

// Draw Head
	glTranslatef(0.0, 1.0, 0.0)
	glutSolidSphere(0.25,20,20)

// Draw Eyes
	glPushMatrix()
	glColor3f(0.0,0.0,0.0)
	glTranslatef(0.05, 0.10, 0.18)
	glutSolidSphere(0.05,10,10)
	glTranslatef(-0.1, 0.0, 0.0)
	glutSolidSphere(0.05,10,10)
	glPopMatrix()

// Draw Nose
	glColor3f(red, green, blue)
	glRotatef(0.0,1.0, 0.0, 0.0)
	glutSolidCone(0.08,0.5,10,2)

	glColor3f(1.0, 1.0, 1.0)

func renderBitmapString x,y,z,font,string
	glRasterPos3f(x, y,z)
	for c in string
	    glutBitmapCharacter(font,ascii(c))
	next

func renderStrokeFontString x,y,z,font,string
	glPushMatrix()
	glTranslatef(x, y,z)
	glScalef(0.002, 0.002, 0.002)
	for c in string
		glutStrokeCharacter(font, Ascii(c));
	next
	glPopMatrix()


func restorePerspectiveProjection

	glMatrixMode(GL_PROJECTION)
	// restore previous projection matrix
	glPopMatrix()

	// get back to modelview mode
	glMatrixMode(GL_MODELVIEW)


func setOrthographicProjection

	// switch to projection mode
	glMatrixMode(GL_PROJECTION)

	// save previous matrix which contains the
	//settings for the perspective projection
	glPushMatrix()

	// reset matrix
	glLoadIdentity()

	// set a 2D orthographic projection
	gluOrtho2D(0, w, h, 0)

	// switch back to modelview mode
	glMatrixMode(GL_MODELVIEW)



func computePos deltaMove

	x += deltaMove * lx * 0.1
	z += deltaMove * lz * 0.1


func renderScene

	if  deltaMove
		computePos(deltaMove)
	ok

	// Clear Color and Depth Buffers
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

	// Reset transformations
	glLoadIdentity()

	// Set the camera
	gluLookAt(	x, 1.0, z,
			x+lx, 1.0,  z+lz,
			0.0, 1.0,  0.0)

	// Draw ground

	glColor3f(0.9, 0.9, 0.9)
	glBegin(GL_QUADS)
		glVertex3f(-100.0, 0.0, -100.0)
		glVertex3f(-100.0, 0.0,  100.0)
		glVertex3f( 100.0, 0.0,  100.0)
		glVertex3f( 100.0, 0.0, -100.0)
	glEnd()

// Draw 36 SnowMen
	for i = -3 to 2
		for j = -3 to 2
			glPushMatrix()
			glTranslatef(i*10.0, 0.0, j * 10.0)
			drawSnowMan()
			number = (i+3)*6+(j+3)
			renderBitmapString(0.0, 0.5, 0.0,font ,""+number)
			glPopMatrix()
		next
	next

	// Code to compute frames per second
	frame++

	time=glutGet(GLUT_ELAPSED_TIME)
	if time - timebase > 1000 
		s = "RingFreeGLUT - FPS: " + (frame*1000.0/(time-timebase))
		timebase = time
		frame = 0
	ok

    // Code to display a string (fps) with bitmap fonts
	setOrthographicProjection()

	glPushMatrix()
	glLoadIdentity()
	renderBitmapString(5,30,0,GLUT_BITMAP_HELVETICA_18,s)
	renderBitmapString(30,45,0,font,"F1 - Game Mode  640x480 32 bits")
	renderBitmapString(30,60,0,font,"F2 - Game Mode  800x600 32 bits")
	renderBitmapString(30,75,0,font,"F3 - Game Mode 1024x768 32 bits")
	renderBitmapString(30,90,0,font,"F4 - Game Mode 1280x1024 32 bits")
	renderBitmapString(30,105,0,font,"F5 - Game Mode 1920x1200 32 bits")
	renderBitmapString(30,120,0,font,"F6 - Window Mode")
	renderBitmapString(30,135,0,font,"Esc - Quit")
	renderBitmapString(30,150,0,font,currentMode)
	glPopMatrix()

	restorePerspectiveProjection()

	glutSwapBuffers()


// -----------------------------------
//             KEYBOARD
// -----------------------------------

func processNormalKeys
	key = glutEventKey()
	xx = glutEventX()
	yy = glutEventY() 

	switch key
		on 27
			glutDestroyMenu(mainMenu)
			glutDestroyMenu(fillMenu)
			glutDestroyMenu(colorMenu)
			glutDestroyMenu(fontMenu)
			Shutdown()
	off


func pressKey 

	key = glutEventKey()
	xx = glutEventX()
	yy = glutEventY()

	switch key
		on GLUT_KEY_UP 
			 deltaMove = 0.5
		on GLUT_KEY_DOWN 
 			deltaMove = -0.5
	off


func releaseKey

	key = glutEventKey()

	switch key
		on GLUT_KEY_UP 
			deltaMove = 0 
		on GLUT_KEY_DOWN
			deltaMove = 0  
		on GLUT_KEY_F1
			// define resolution, color depth
			glutGameModeString("640x480:32")
			// enter full screen
			if  glutGameModeGet(GLUT_GAME_MODE_POSSIBLE)
				glutEnterGameMode()
				gameModeString = "640x480:32"
				// register callbacks again
				// and init OpenGL context
				init()
			else
				glutGameModeString(gameModeString)
			ok
		on GLUT_KEY_F2
			// define resolution, color depth
			glutGameModeString("800x600:32")
			// enter full screen
			if  glutGameModeGet(GLUT_GAME_MODE_POSSIBLE)
				glutEnterGameMode()
				gameModeString = "800x600:32"
				// register callbacks again
				// and init OpenGL context
				init()
			else
				glutGameModeString(gameModeString)
			ok
		on GLUT_KEY_F3
			// define resolution, color depth
			glutGameModeString("1024x768:32")
			// enter full screen
			if glutGameModeGet(GLUT_GAME_MODE_POSSIBLE)
				glutEnterGameMode()
				gameModeString = "1024x768:32"
				// register callbacks again
				// and init OpenGL context
				init()
			else
				glutGameModeString(gameModeString)
			ok
		on GLUT_KEY_F4
			// define resolution, color depth
			glutGameModeString("1280x1024:32")
			// enter full screen
			if glutGameModeGet(GLUT_GAME_MODE_POSSIBLE)
				glutEnterGameMode()
				gameModeString = "1280x1024:32"
				// register callbacks again
				// and init OpenGL context
				init()
			else
				glutGameModeString(gameModeString)
			ok
		on GLUT_KEY_F5
			// define resolution, color depth
			glutGameModeString("1920x1200")
			// enter full screen
			if glutGameModeGet(GLUT_GAME_MODE_POSSIBLE)
				glutEnterGameMode()
				gameModeString = "1920x1200"
				// register callbacks again
				// and init OpenGL context
				init()
			else
				glutGameModeString(gameModeString)
			ok
		on GLUT_KEY_F6
			// return to default window
			w = 800
			h = 600
			if glutGameModeGet(GLUT_GAME_MODE_ACTIVE) != 0
				glutLeaveGameMode()
			ok
	off
	if glutGameModeGet(GLUT_GAME_MODE_ACTIVE) = 0
		currentMode = "Current Mode: Window"
	else
		currentMode = "Current Mode: Game Mode "+
			glutGameModeGet(GLUT_GAME_MODE_WIDTH)+"x"+
			glutGameModeGet(GLUT_GAME_MODE_HEIGHT)+" at "+
			glutGameModeGet(GLUT_GAME_MODE_REFRESH_RATE)+" hertz, "+
			glutGameModeGet(GLUT_GAME_MODE_PIXEL_DEPTH)+" bpp"
	ok
			
			
			


// -----------------------------------
//             MOUSE
// -----------------------------------

func mouseMove
	xx = glutEventX()
	yy = glutEventY()

	// this will only be true when the left button is down
	if xOrigin >= 0

		// update deltaAngle
		deltaAngle = (xx - xOrigin) * 0.001

		// update camera's direction
		lx = sin(angle + deltaAngle)
		lz = -cos(angle + deltaAngle)
	ok


func mouseButton

	button = glutEventButton()
	state = glutEventState()
	xx = glutEventX()
	yy = glutEventY()

	// only start motion if the left button is pressed
	if button = GLUT_LEFT_BUTTON
		// when the button is released
		if state = GLUT_UP
			angle += deltaAngle
			xOrigin = -1
		else  
			// state = GLUT_DOWN
			xOrigin = xx
		ok
	ok


// -----------------------------------
//             MENUS
// -----------------------------------

func processMenuStatus

	status = glutEventStatus()

	if status = GLUT_MENU_IN_USE
		menuFlag = 1
	else
		menuFlag = 0
	ok


func processMainMenu 

	// nothing to do in here
	// all actions are for submenus


func processFillMenu

	option = glutEventValue()

	switch option

		on C_FILL
			glPolygonMode(GL_FRONT, GL_FILL)
		on C_LINE
			 glPolygonMode(GL_FRONT, GL_LINE)
	off


func processFontMenu 

	option = glutEventValue()

	switch (option) {
		on C_INT_GLUT_BITMAP_8_BY_13
			font = GLUT_BITMAP_8_BY_13
		on C_INT_GLUT_BITMAP_9_BY_15
			font = GLUT_BITMAP_9_BY_15
		on C_INT_GLUT_BITMAP_TIMES_ROMAN_10
			font = GLUT_BITMAP_TIMES_ROMAN_10
		on C_INT_GLUT_BITMAP_TIMES_ROMAN_24
			font = GLUT_BITMAP_TIMES_ROMAN_24
		on C_INT_GLUT_BITMAP_HELVETICA_10
			font = GLUT_BITMAP_HELVETICA_10
		on C_INT_GLUT_BITMAP_HELVETICA_12
			font = GLUT_BITMAP_HELVETICA_12
		on C_INT_GLUT_BITMAP_HELVETICA_18
			font = GLUT_BITMAP_HELVETICA_18
	off
 
func processColorMenu

	option = glutEventValue()

	switch option 
		on C_RED 
			red = 1.0
			green = 0.0
			blue = 0.0
		on C_GREEN 
			red = 0.0
			green = 1.0
			blue = 0.0
		on C_BLUE 
			red = 0.0
			green = 0.0
			blue = 1.0
		on C_ORANGE 
			red = 1.0
			green = 0.5
			blue = 0.5
	off


func createPopupMenus

	fontMenu = glutCreateMenu(:processFontMenu)

	glutAddMenuEntry("BITMAP_8_BY_13 ",C_INT_GLUT_BITMAP_8_BY_13 )
	glutAddMenuEntry("BITMAP_9_BY_15",C_INT_GLUT_BITMAP_9_BY_15 )
	glutAddMenuEntry("BITMAP_TIMES_ROMAN_10 ",C_INT_GLUT_BITMAP_TIMES_ROMAN_10  )
	glutAddMenuEntry("BITMAP_TIMES_ROMAN_24",C_INT_GLUT_BITMAP_TIMES_ROMAN_24  )
	glutAddMenuEntry("BITMAP_HELVETICA_10 ",C_INT_GLUT_BITMAP_HELVETICA_10  )
	glutAddMenuEntry("BITMAP_HELVETICA_12",C_INT_GLUT_BITMAP_HELVETICA_12  )
	glutAddMenuEntry("BITMAP_HELVETICA_18",C_INT_GLUT_BITMAP_HELVETICA_18  )

	fillMenu = glutCreateMenu(:processFillMenu)

	glutAddMenuEntry("Fill",C_FILL)
	glutAddMenuEntry("Line",C_LINE)

	colorMenu = glutCreateMenu(:processColorMenu)
	glutAddMenuEntry("Red",C_RED);
	glutAddMenuEntry("Blue",C_BLUE);
	glutAddMenuEntry("Green",C_GREEN);
	glutAddMenuEntry("Orange",C_ORANGE);

	mainMenu = glutCreateMenu(:processMainMenu)

	glutAddSubMenu("Polygon Mode", fillMenu)
	glutAddSubMenu("Color", colorMenu)
	glutAddSubMenu("Font",fontMenu)
	// attach the menu to the right button
	glutAttachMenu(GLUT_RIGHT_BUTTON)

	// this will allow us to know if the menu is active
	glutMenuStatusFunc(:processMenuStatus)


func init
	// register callbacks
	glutDisplayFunc(:renderScene)
	glutReshapeFunc(:changeSize)
	glutIdleFunc(:renderScene)

	glutIgnoreKeyRepeat(1)
	glutKeyboardFunc(:processNormalKeys)
	glutSpecialFunc(:pressKey)
	glutSpecialUpFunc(:releaseKey)

	// here are the two new functions
	glutMouseFunc(:mouseButton)
	glutMotionFunc(:mouseMove)

	// OpenGL init
	glEnable(GL_DEPTH_TEST)
	glEnable(GL_CULL_FACE)

	// init Menus
	createPopupMenus()

// -----------------------------------
//             MAIN
// -----------------------------------

func main

	// init GLUT and create window
	glutInit()
	glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA)
	glutInitWindowPosition(100,100)
	glutInitWindowSize(320,320)
	glutCreateWindow("RingFreeGLUT - Test 13")

	init()


	// enter GLUT event processing cycle
	glutMainLoop()

