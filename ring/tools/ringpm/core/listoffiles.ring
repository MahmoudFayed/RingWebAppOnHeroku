/*
	Title :	The Ring Package Manager 
	Date  : 2018.10.31
	Author: Mahmoud Fayed <msfclipper@yahoo.com>
*/

class ListOfFiles

	func ListAllFiles cPath,cExt
		if left(cExt,2) = "*."
			cExt = substr(cExt,3)
		ok
		aList = dir(cPath)
		return ListAllFiles_process(cPath,aList,cExt)
	
	func ListAllFiles_Process cPath,aList,cExt
		aOutput = []
		for aSub in aList 
			if aSub[2] # Directory
				cNewPath = cPath + "/" + aSub[1]
				aSubOutput = listAllFiles(cNewPath,cExt)
				for item in aSubOutput 
					aOutput + item
				next 
			else		# File
				if cExt != NULL
					if right(aSub[1],len(cExt)+1) = "."+cExt 
						aOutput + ( cPath + "/" + aSub[1] )
					ok
				else
					aOutput + ( cPath + "/" + aSub[1] )
				ok
			ok
		next
		return aOutput
	
