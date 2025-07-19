# The Ring Notepad Application (RNote)
# Author : Mahmoud Fayed <msfclipper@yahoo.com>

class RNoteAutoComplete

	func PrepareAutoComplete
		oAutoCompleteList = new qStringList()
		# Add Ring Keywords
			aKeywords = ["again","and","but","bye","call","case","catch",
				"changeringkeyword","changeringoperator","class",
				"def","disablehashcomments","do","done","else","elseif","end","exit","for","from",
				"func","get","give","if","import","in","load","loadsyntax",
				"loop","new","next","not","off","ok","on","or","other",
				"package","private","put","return","see","step","switch",
				"to","try","while","enablehashcomments","endfunc","endclass","endpackage",
				"endif","endfor","endwhile","endswitch","endtry",
				"function","endfunction","break","continue"]
			AddItems(aKeywords,oAutoCompleteList)
		# Add Ring Functions
			aCFunctionsList = cfunctions()
			for cFunction in aCFunctionsList
				cFunction += "()"
			next
			AddItems(aCFunctionsList,oAutoCompleteList)
		# Add Ring Methods
			aCMethodsList = aCFunctionsList
			for x = len(aCMethodsList) to 1 step -1
				cMethod = aCMethodsList[x]
				nPos = substr(cMethod,"_")
				if nPos
					aCMethodsList[x] = substr(aCMethodsList[x],nPos+1)
				else
					del(aCMethodsList,x)
				ok
			next
			AddItems(aCMethodsList,oAutoCompleteList)
			oAutoCompleteList.RemoveDuplicates()
		# Add Ring Classes
			aClassesList = classes()
			aClassesNoInit = ["qapp"]
			for cClass in aClassesList
				if find(aClassesNoInit,cClass) = 0
					cClass = cClass + "() {" + nl + "}"
				else
					cClass = cClass + " {" + nl + "}"
				ok
			next
			AddItems(aClassesList,oAutoCompleteList)
		# Add Ring Libraries
			aLibsList = [   'load "stdlib.ring"' ,
					'load "stdlibcore.ring"',
					'load "stdlibclasses.ring"',
					'load "lightguilib.ring"',
					'load "guilib.ring"',
					'load "consolecolors.ring"',
					'load "rogueutil.ring"',
					'load "csvlib.ring"',
					'load "jsonlib.ring"',
					'load "fastpro.ring"',
					'load "gamelib.ring"',
					'load "raylib.ring"',
					'load "gameengine.ring"',
					'load "libcurl.ring"',
					'load "internetlib.ring"',
					'load "httplib.ring"',
					'load "openssllib.ring"',
					'load "sqlitelib.ring"',
					'load "mysqllib.ring"',
					'load "postgresqllib.ring"',
					'load "odbclib.ring"',
					'load "libsdl.ring"',
					'load "libui.ring"',
					'load "libuv.ring"',
					'load "matrixlib.ring"',
					'load "murmurhashlib.ring"',
					'load "naturallib.ring"',
					'load "objectslib.ring"',
					'load "freeglut.ring"',
					'load "opengl21lib.ring"',
					'load "stbimage.ring"',
					'load "threads.ring"',
					'load "tilengine.ring"',
					'load "tokenslib.ring"',
					'load "typehints.ring"',
					'load "bignumber.ring"',
					'load "zerolib.ring"',
					'load "ziplib.ring"',
					'load "winapi.ring"',
					'load "wincreg.ring"',
					'load "tracelib.ring"',
					'load "weblib.ring"']
			AddItems(aLibsList,oAutoCompleteList)
		# Save the List Size
			nAutoCompleteListSize = oAutoCompleteList.Count()

	func AutoCompleteTimer
 		cFileContent = textedit1.toplaintext() # read(cActiveFileName)
		if len(cFileContent) > 3 and len(cFileContent) < 1024 # 1KByte
			CallAutoComplete()
		else
			if len(cFileContent) > 3
				CallAutoComplete()
				oACTimer.stop()
			ok
		ok

	func CallAutoComplete
		if isObject(oCompleter)
			if oCompleter.popup().isvisible() = false
				AutoComplete()
			ok
		ok


	func AutoComplete
		lEditorHasFocus = textedit1.hasfocus()
		StatusMessage(T_RINGNOTEPAD_AUTOCOMPLETEWAIT) # "Prepare Auto-Complete ... Please Wait!")
		# Add words in the current file
			cFileContent = textedit1.toplaintext() # read(cActiveFileName)
			if len(cFileContent) < 102400	# 100 KByte
				StatusMessage(T_RINGNOTEPAD_AUTOCOMPLETEPREPARE) # "Prepare Auto-Complete ... Get File Words!")
				aList = Split(cFileContent," ")
				StatusMessage(T_RINGNOTEPAD_AUTOCOMPLETEFILTER) # "Prepare Auto-Complete ... Filter!")
				nMax = len(aList)
				for x = nMax to 1 step -1
					if not isalnum(aList[x])
						del(aList,x)
					ok
				next
				AddItems(aList,oAutoCompleteList)
			ok
		StatusMessage(T_RINGNOTEPAD_AUTOCOMPLETEREMOVE) # "Prepare Auto-Complete ... Remove Duplicates!")
		oAutoCompleteList.RemoveDuplicates()
		StatusMessage(T_RINGNOTEPAD_AUTOCOMPLETESORT) # "Prepare Auto-Complete ... Sort!")
		oAutoCompleteList.Sort()
		oCompleter = new qCompleter3(oAutoCompleteList,textedit1)
		oCompleter.setCaseSensitivity(Qt_CaseInsensitive)
		oCompleter.setCompletionMode(QCompleter_PopupCompletion)
		oTFont.fromstring(cFont)
		oCompleter.popup().setFont(oTFont)
		textedit1.setCompleter(oCompleter)
		StatusMessage(T_RINGNOTEPAD_AUTOCOMPLETEDONE)  # "Prepare Auto-Complete ... Done!")
		StatusMessage(T_RINGNOTEPAD_AUTOCOMPLETEREADY) # "Ready...")
		if isObject(oACTimer)
			oACTimer.start()
		ok
		if lEditorHasFocus
			textedit1.setfocus(0)
		ok
