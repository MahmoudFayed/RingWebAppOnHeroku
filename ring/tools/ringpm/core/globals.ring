/*
	Title :	The Ring Package Manager 
	Date  : 2018.10.18
	Author: Mahmoud Fayed <msfclipper@yahoo.com>
*/

# Errors 
	C_ERROR_NOPACKAGENAME			= "Error(1) : No package name!"
	C_ERROR_NOPACKAGEINFO 			= "Error(2) : No package info!"
	C_ERROR_WEDONTHAVETHISPACKAGE		= "Error(3) : We don't have this package"
	C_ERROR_PACKAGEINFOISNOTCORRECT 	= "Error(4) : Package information is not correct"
	C_ERROR_CANTDOWNLOADTHEPACKAGEFILE 	= "Error(5) : Can't download the package file"
	C_ERROR_BADRINGVERSION			= "Error(6) : Bad Ring Version"
	C_ERROR_CANTGETPACKAGESINFORMATION	= "Error(7) : Can't get the installed packages information"
	C_ERROR_NOUPDATES 			= "Error(8) : No updates for this package"
	C_ERROR_THISPACKAGEISUSEDBYOTHERPACKAGES= "Error(9) : This package is used by other packages"
	C_ERROR_PACKAGENOTFOUND			= "Error(10): Package doesn't exist"
	C_ERROR_CANTWRITETHEFILE		= "Error(11): Can't write the file"
	C_ERROR_BRANCHNAMEISMISSING		= "Error(12): Branch name is missing"
	C_ERROR_LOCKFILEDOESNOTEXIST		= "Error(13): Lock file doesn't exist"
	C_ERROR_USERNAMEISMISSING		= "Error(14): User name is missing"
	C_ERROR_CANTDOWNLOADTHEVERSIONFILE	= "Error(15): Can't download the version file to get the Registry information!"
	C_ERROR_CANTDOWNLOADTHEREGISTRYFILE	= "Error(16): Can't download the Registry file to get the Registry information!"
	C_NOTE_PACKAGEALREADYEXISTS		= "Note : Package Already Exists"
	C_NOTE_AVOIDDELETINGAPACKAGE		= "Note : Avoid deleting the package "
	C_NOTE_NOCOMMANDTORUNTHEPACKAGE		= "Note : No command is defined to run the package!"
	C_NOTE_PACKAGEVERSIONISNOTCOMPATIBLE	= "Note : The package version is not compatible with the required version"
	C_NOTE_NOKEYWORDS			= "Note : No keywords to use in the search operation"




# The parameters of our command 	
	aCommand	   	= []

# Folders
	cMainPackagesFolder 	= exefolder()+"../tools/ringpm/packages"

# Version 
	C_VERSIONSECTIONSIZE	= 3

# All Packages Information

	oAllPackagesInfo 	= new AllPackagesInfo

# Flag for Install Errors 
	lInstallError 		= False 

# Flag for displaying package information during installation 
	lDisplayPackageInfo  	= False 
	lDisplayPackageFiles 	= True 
	lDisplayOperationDone	= False

# Flag to check updates in the List command 

	lCheckUpdates 		= True 

# Registry File 
	C_REGISTRYFILE 		= exefolder()+"../tools/ringpm/registry/registry.ring"

# GitHub User Content 
	C_GITHUBUSERCONTENT 	= "https://raw.githubusercontent.com/"
	C_BRANCHSEPARATOR	= "/"
