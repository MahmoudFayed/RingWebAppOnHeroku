# The Ring Notepad Application (RNote)
# Author : Mahmoud Fayed <msfclipper@yahoo.com>

# Load Ring Notepad
	load "rnote.ring"

# Load Translation Files
	load "translation/arabic.ring"
	load "src/templates.ring"
	load "../formdesigner/translation/arabic.ring"

# Support RightToLeft() function
	load "winlib.ring"

# Open the Environment 
	if isMainSourceFile() 
		# Create the Ring Notepad Object
			Open_WindowNoShow(:RNoteController)
	ok
