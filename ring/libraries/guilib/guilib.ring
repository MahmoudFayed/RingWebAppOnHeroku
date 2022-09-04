# Check if Light GUILib is used in the same project!
	if isGlobal(:C_USING_LIGHTGUILIB)
		? "Warning: Trying to load GUILib while LightGUILib is already used! - Operation Canceled"
		return
	ok

C_USING_GUILIB = True

# Load the DLL files 
	if iswindows()
		SysSet ("QT_QPA_PLATFORM_PLUGIN_PATH", exefolder())
		LoadLib("ringqt.dll")
	but ismacosx()
		LoadLib("libringqt.dylib")
	but islinux()
		LoadLib("libringqt.so")
	ok

# Load the files
	load "guilibfiles.ring"