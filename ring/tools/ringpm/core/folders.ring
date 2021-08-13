/*
	Title :	The Ring Package Manager 
	Date  : 2018.10.19
	Author: Mahmoud Fayed <msfclipper@yahoo.com>
*/

func CreateSubFolders cFileName 
	# Remove the file name - Keep the PATH 
		cPath = JustFilePath(cFileName)
		if cPath = "" return ok
		# Support for Windows, Linux, macOS
			cPath = substr(cPath,"\","/")
		aFolders = Split(cPath,"/")
		# Create Folder and sub folders 
			for cFolder in aFolders 
				OSCreateOpenFolder(cFolder)
			next 
