func main
	? "Removing Folder : ring/extensions/android/ringqt"
	cDir = CurrentDir()
	chdir(exefolder()+"../extensions/android")
	OSDeleteFolder("ringqt")
	chdir(cDir)

func OSDeleteFolder cFolder 
	if isWindows() 
		systemSilent("rd /s /q " + cFolder)
	else
		systemSilent("rm -r " + cFolder)
	ok

func SystemSilent cCmd
	if isWindows()
		system(cCmd + " >nul 2>nul")
	else 
		system(cCmd + " > /dev/null")
	ok