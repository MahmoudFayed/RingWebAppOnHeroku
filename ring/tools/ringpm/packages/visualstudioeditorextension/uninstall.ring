func main
	? "Removing Folder : ring/tools/editor/visualstudio"
	cDir = CurrentDir()
	chdir(exefolder()+"../tools/editor")
	OSDeleteFolder("visualstudio")
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