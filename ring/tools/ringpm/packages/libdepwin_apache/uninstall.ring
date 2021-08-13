func main
	? "Removing Folder : Apache2.2"
	cDir = CurrentDir()
	chdir(exefolder()+"../extensions/libdepwin")
	OSDeleteFolder("Apache2.2")
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