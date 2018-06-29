# The Ring Standard Library
# Game Engine for 2D Games
# 2016, Mahmoud Fayed <msfclipper@yahoo.com>

load "gl_libsdl.ring"

gl_start_playing()

func main	
	win = gl_create_display(800,600)	
	gl_set_window_title(win,"Hello World")	
	myimage = gl_load_bitmap("images/stars.jpg")
	gl_draw_scaled_bitmap(myimage,0,0,0,0,0,0,400,400,0)
	gl_flip_display()
	gl_delay(2000)
	gl_exit()