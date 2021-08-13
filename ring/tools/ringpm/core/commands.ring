/*
	Title :	The Ring Package Manager 
	Date  : 2018.10.18
	Author: Mahmoud Fayed <msfclipper@yahoo.com>
*/

# Load Commands 
	load "common.ring"
	load "../commands/install.ring"
	load "../commands/lockfile.ring"
	load "../commands/list.ring"
	load "../commands/remove.ring"
	load "../commands/format.ring"
	load "../commands/update.ring"
	load "../commands/run.ring"
	load "../commands/new.ring"
	load "../commands/search.ring"
	load "../commands/refresh.ring"
	load "../commands/package.ring"

func ExecuteCommands
	# Check if we don't have commands
		if len(aCommand) < 1 return ok
	# The command is not case-sensitive
		cCommand = lower(trim(aCommand[1]))
	# Execute Commands
		switch cCommand 
			on "search"
				aKeywords = GetKeywordsFromParameters()
				if len(aKeywords) = 0 ? nl + C_NOTE_NOKEYWORDS + nl ok
				Search(aKeywords)
			on "refresh"
				UpdateTheRegistry()
			on "install"				
				cPackageName = GetPackageNameFromParameters()
				if cPackageName = "" 
					if fexists("package.ring")
						oInstall = new InstallCommand
						oInstall.InstallPackageFromCurrentFolder()
					else 
						? C_ERROR_NOPACKAGENAME 
					ok
					return 
				ok
				oInstall = new InstallCommand
				oInstall.SetBranchFromCommandLine()
				if lInstallError return ok
				oInstall.SetUserNameFromCommandLine()
				if lInstallError return ok
				oInstall.InstallPackage(cPackageName)
			on "list"
				CheckUpdatesInList()
				PrintInstalledPackages()
			on "run"
				cPackageName = GetPackageNameFromParameters()
				if cPackageName = "" 
					if fexists("package.ring")
						RunCurrentPackage()
					else 
						? C_ERROR_NOPACKAGENAME 
					ok
					return 
				ok
				RunPackage(cPackageName)
			on "update"
				cPackageName = GetPackageNameFromParameters()
				if cPackageName = "" ? C_ERROR_NOPACKAGENAME return ok
				UpdatePackage(cPackageName)				
			on "remove"
				cPackageName = GetPackageNameFromParameters()
				if cPackageName = "" ? C_ERROR_NOPACKAGENAME return ok
				RemovePackage(cPackageName)
			on "format"
				DeleteAllPackages()
			on "new"
				cPackageName = GetPackageNameFromParameters()
				if cPackageName = "" ? C_ERROR_NOPACKAGENAME return ok
				NewPackage(cPackageName)
			on "package"
				CreatePackageInTheCurrentFolder()
			other 
				? "Bad Command!"
		off
	
func GetPackageNameFromParameters
	if len(aCommand) < 2 
		return ""
	ok 
	return aCommand[2]


func CheckUpdatesInList
	if find(aCommand,"-u") or find(aCommand,"-u")
		lCheckUpdates = True
	else 
		lCheckUpdates = False 
	ok


func GetKeywordsFromParameters
	aKeywords = []
	if len(aCommand) >= 2 
		for x = 2 to len(aCommand)
			aKeywords + aCommand[x]
		next 
	ok 
	return aKeywords
