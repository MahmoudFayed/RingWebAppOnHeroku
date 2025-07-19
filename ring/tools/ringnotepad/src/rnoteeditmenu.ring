# The Ring Notepad Application (RNote)
# Author : Mahmoud Fayed <msfclipper@yahoo.com>
# Author : Gal Zsolt 
# Author : Marino Esteban

class RNoteEditMenu

	func Undo
		textedit1.undo()
		StatusMessage(T_RINGNOTEPAD_STATUSUNDO) # "Undo!"

	func Cut
		textedit1.cut()
		StatusMessage(T_RINGNOTEPAD_STATUSCUT) # "Cut!"

	func CopyText
		textedit1.copy()
		StatusMessage(T_RINGNOTEPAD_STATUSCOPY) # "Copy!"

	func Paste
		textedit1.paste()
		StatusMessage(T_RINGNOTEPAD_STATUSPASTE) # "Paste!"

	func Font
		oFontDialog = new qfontdialog() {
			this.oTFont.fromstring(this.cFont)
			setcurrentfont(this.oTFont)
			setFontSelectedEvent(this.Method(:FontAction))
			show()
		}

	func FontAction	
		cFont = oFontDialog.selectedfont().tostring()
		SetFont()	# set the new font

	func SetFont
		oTFont.fromstring(cFont)
		oCursor = textedit1.textCursor()
		oCursor.clearselection()
		textedit1.settextcursor(oCursor)
		textedit1.Document().setdefaultfont(oTFont)
		if lSetProjectFilesFont 
			oTFont.setFamily(GetFontFamilyName(:Roboto))
			oTFont.setStrikeout(False)
			oTFont.setbold(False)
			oTFont.setpointsize(max(oTFont.pointsize()-2,8))
			tree1.setfont(oTFont)
		ok

	func SelectColor
		new qcolordialog() {
			r = exec()
			if r = 0 return ok
			oColor = currentcolor()
			r = oColor.red()
			g = oColor.green()
			b = oColor.blue()
		}
		this.aTextColor = [r,g,b]
		SetColors()

	func SelectColor2
		new qcolordialog() {
			r = exec()
			if r = 0 return ok
			oColor = currentcolor()
			r = oColor.red()
			g = oColor.green()
			b = oColor.blue()
		}
		this.aBackColor = [r,g,b]
		SetColors()

	func SetColors
		this.textedit1.setstylesheet("QPlainTextEdit { color: rgb(" + aTextColor[1] + "," + aTextColor[2] +
					"," + aTextColor[3] + ");" + "background-color: rgb(" +
					aBackColor[1] + "," + aBackColor[2] + "," +
					aBackColor[3] + ") }")

	func LowerCase
		UpdateSelectedText(func cData {
			return Lower(cData)
		})
	
	func UpperCase
		UpdateSelectedText(func cData {
			return Upper(cData)
		})
	
	func Capitalize
		UpdateSelectedText(func cData {
			lCap = True 
			cNewStr = ""
			for nChar = 1 to len(cData)
				if lCap 
					cNewStr += Upper(cData[nChar])
					lCap = False
				else 
					cNewStr += cData[nChar]
					if cData[nChar] = " " or cData[nChar] = Char(13) or cData[nChar] = Char(10) 
						lCap = True 
					ok
				ok
			next  
			return cNewStr
		})

	func CommentLines
		UpdateSelectedText(func cData {
			aList = str2list(cData)
		if cData[len(cData)] = char(10)
			aList + ""      # This check to overcome trimming of EOL by str2list() function
		ok
		for cItem in aList
			if len(cItem) > 1
				if cItem[1] = '/' and cItem[2] = '/'
					cItem = substr(cItem, 3)
					loop
				ok
			ok
			cItem = "//" + cItem
		next
			return list2str(aList)
		})

	func CommentBlocklines
		UpdateSelectedText(func cData {
			return "/*" + nl + cData + nl + "*/" 
		})

	func UpdateSelectedText fFunction
		seltext = textedit1.textCursor().selectedtext()
		seltext = substr(seltext, char(226) + char(128) + char(169), char(10))      # This line corrects chars of EOL caused by selectedtext()
		if len(seltext) > 0
			textedit1.textcursor().insertText(call fFunction(seltext))
		ok
		
