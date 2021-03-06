/*
	Base layout is like on computers with One-Two-Three at bottom.
*/


#Include mouseGrid.ahk

setLayer(n) {
	global row123, layer, LAYER_MENU, LAYER_MOUSE, LAYER_MOUSE_GRID, LAYER_CURSOR, LAYER_LETTERS, LAYER_LETTERS1, LAYER_LETTERS2, LAYER_NUMBERS, LAYER_SIGNS, LAYER_SIGNS1, LAYER_FKEYS, LAYER_MACROS, LAYER_EDIT, LAYER_MOVEGUI, LAYER_MORE_MENU, LAYER_MORE_MOUSE, layer
	;GuiControl,, Enter, Enter
	layer := n
	
	if(n = LAYER_MENU) {
		debug("Menu")
		setNumLock("MORE")
		setDiv("F1 -`nF12") 
		setMult()
		setBS("ESC")
		
		setSeven("1-9")
		setEight(". " . ", " . ": " . ";" . "`n+ - _ !")
		setNine("SIGN`n2")
		setSub("Win")
		
		setFour("A - I")
		setFive("J - R")
		setSix("S - Z")
		setAdd("Menu")
		
		setOne("MOUS")
		setTwo("CRSR")
		setThree("EDIT")
		setEnter("E`nn`nt`ne`nr")
		
		setZero()
		setTripleZero("MORE")
		setDot("SPC")
	}
	else if(n = LAYER_MOUSE) {
		debug("Mouse")
		setAllLabels("","«","»","ESC","L","↑","R","▲","←","↓","→","▼","lmb`ndn","","GRID",,"⌂",,"")
	}
	else if(n = LAYER_MOUSE_GRID) {
		debug("Mouse")
		setAllLabels("","","","","7","8","9","","4","5","6","","1","2","3","Ok","⌂",,"")
	}
	else if(n = LAYER_CURSOR) {
		debug("Cursor")
		setAllLabels("","",,,"Home","↑","PgUp","","←","↓","→","","End",,"PgDn","","⌂")
	}
	else if(n = LAYER_EDIT) {
		debug("Edit")
		setAllLabels("","Undo","Redo","BS","DEL","↑","Tab","alt","←","↓","→","ctrl","Copy","Cut","Paste","shift","⌂")
	}
	else if(n = LAYER_NUMBERS) {
		debug("Numbers")
		setAllLabels(,"0",,"←","7","8","9",,"4","5","6",":","1","2","3",".","⌂",,"Space")
	}
	else if(n = LAYER_FKEYS) {
		debug("F-Keys")
		setAllLabels(,"F10","F11","F12","F7","F8","F9",,"F4","F5","F6",,"F1","F2","F3",,"⌂")
	}
	else if(n = LAYER_LETTERS) {
		debug("Letters A-I")
		setAllLabels(,"Ä",,"←","A","B","C","alt","D","E","F","ctrl","G","H","I","shft","⌂",,"SPC")
	}
	else if(n = LAYER_LETTERS1) {
		debug("Letters J-R")
		setAllLabels(,"Ö",,"←","J","K","L","alt","M","N","O","ctrl","P","Q","R","shft","⌂",,"SPC")
	}
	else if(n = LAYER_LETTERS2) {
		debug("Letters S-Z")
		setAllLabels(,"Ü","ß","←","S","T","U","alt","V","W","X","ctrl","Y","Z",,"shft","⌂",,"SPC")
	}
	else if(n = LAYER_SIGNS) {
		debug("Signs 1")
		setAllLabels("","SQT","@","€","!","?","&&","%","DOT","COM","COL","SCOL","/","\","$","QT","⌂","~","#")
	}
	else if(n = LAYER_SIGNS1) {
		debug("Signs 2")
		setAllLabels("","|","^","°","<",">","[","]","(",")","{","}","+","-","*","/","⌂","_","=")
	}
	else if(n = LAYER_MOVEGUI) {
		debug("Move GUI")
		setAllLabels(,"Save`nPos",,,,"↑",,,"←","↓","→",,,,,,"⌂")
	}
	else if(n = LAYER_MORE_MENU) {
		debug("More Menu")
		setAllLabels(,"Save`nPos",,,,"↑",,,"←","↓","→",,"MOV`nGUI",,,,"⌂")
	}
	else if(n = LAYER_MORE_MOUSE) {
		debug("More Mouse")
		setAllLabels(,"Save`nPos",,,,"↑",,,"←","↓","→",,"MOV`nGUI",,,,"⌂")
	}
	else if(n = 99) {
		debug("test")
		setNumlock("Num`nLock")
		setDiv("/")
		setMult("*")
		setBS("←")
		
		setSeven(row123 = "top" ? "1" : "7")
		setEight(row123 = "top" ? "2" : "8")
		setNine(row123 = "top" ? "3" : "9")
		setSub("-")
		
		setFour("4")
		setFive("5")
		setSix("6")
		setAdd("+")
		
		setOne(row123 = "top" ? "7" : "1")
		setTwo(row123 = "top" ? "8" : "2")
		setThree(row123 = "top" ? "9" : "3")
		setEnter("Enter")
		
		setZero("0")
		setTripleZero("000")
		setDot(".")
		
	}
	else {
		setLayer(LAYER_MENU)
	}
}

setAllLabels(numlock="", div="", mult="", bs="", seven="", eight="", nine="", sub="", four="", five="", six="", add="", one="", two="", three="", enter="", zero="", tripleZero="", dot="") {
	setNumLock(numlock)
	setDiv(div)
	setMult(mult)
	setBS(bs)
	setSeven(seven)
	setEight(eight)
	setNine(nine)
	setSub(sub)
	setFour(four)
	setFive(five)
	setSix(six)
	setAdd(add)
	setOne(one)
	setTwo(two)
	setThree(three)
	setEnter(enter)
	setZero(zero)
	setTripleZero(tripleZero)
	setDot(dot)
}

setNumLock(text="") {
	if(text = "") {
		GuiControl, Disabled, Numlock
	}
	else {
		GuiControl, Enabled, NumLock
	}
	GuiControl,,Numlock,%text%
}
setDiv(text="") {
	if(text = "") {
		GuiControl, Disabled, Div
	}
	else {
		GuiControl, Enabled, Div
	}
	GuiControl,,Div,%text%
}
setMult(text="") {
	if(text = "") {
		GuiControl, Disabled, Mult
	}
	else {
		GuiControl, Enabled, Mult
	}
	GuiControl,,Mult,%text%
}
setBS(text="") {
	if(text = "") {
		GuiControl, Disabled, BS
	}
	else {
		GuiControl, Enabled, BS
	}
	GuiControl,,BS,%text%
}
setSeven(text="") {
	if(text = "") {
		GuiControl, Disabled, Seven
	}
	else {
		GuiControl, Enabled, Seven
	}
	GuiControl,,Seven,%text%
}
setEight(text="") {
	if(text = "") {
		GuiControl, Disabled, Eight
	}
	else {
		GuiControl, Enabled, Eight
	}
	GuiControl,,Eight,%text%
}
setNine(text="") {
	if(text = "") {
		GuiControl, Disabled, Nine
	}
	else {
		GuiControl, Enabled, Nine
	}
	GuiControl,,Nine,%text%
}
setSub(text="") {
	if(text = "") {
		GuiControl, Disabled, Sub
	}
	else {
		GuiControl, Enabled, Sub
	}
	GuiControl,,Sub,%text%
}
setFour(text="") {
	if(text = "") {
		GuiControl, Disabled, Four
	}
	else {
		GuiControl, Enabled, Four
	}
	GuiControl,,Four,%text%
}
setFive(text="") {
	if(text = "") {
		GuiControl, Disabled, Five
	}
	else {
		GuiControl, Enabled, Five
	}
	GuiControl,,Five,%text%
}
setSix(text="") {
	if(text = "") {
		GuiControl, Disabled, Six
	}
	else {
		GuiControl, Enabled, Six
	}
	GuiControl,,Six,%text%
}
setAdd(text="") {
	if(text = "") {
		GuiControl, Disabled, Add
	}
	else {
		GuiControl, Enabled, Add
	}
	GuiControl,,Add,%text%
}
setOne(text="") {
	if(text = "") {
		GuiControl, Disabled, One
	}
	else {
		GuiControl, Enabled, One
	}
	GuiControl,,One,%text%
}
setTwo(text="") {
	if(text = "") {
		GuiControl, Disabled, Two
	}
	else {
		GuiControl, Enabled, Two
	}
	GuiControl,,Two,%text%
}
setThree(text="") {
	if(text = "") {
		GuiControl, Disabled, Three
	}
	else {
		GuiControl, Enabled, Three
	}
	GuiControl,,Three,%text%
}
setEnter(text="") {
	if(text = "") {
		;GuiControl, Disabled, Enter
	}
	else {
		GuiControl, Enabled, Enter
	}
	GuiControl,,Enter,%text%
}
setZero(text="") {
	global layer, LAYER_MENU
	if(layer != LAYER_MENU) {
		GuiControl, Disabled, Zero
	}
	else {
		GuiControl, Enabled, Zero
	}
	GuiControl,,Zero,%text%
}
setTripleZero(text="") {
	if(text = "") {
		GuiControl, Disabled, TripleZero
	}
	else {
		GuiControl, Enabled, TripleZero
	}
	GuiControl,,TripleZero,%text%
}
setDot(text="") {
	if(text = "") {
		GuiControl, Disabled, Dot
	}
	else {
		GuiControl, Enabled, Dot
	}
	GuiControl,,Dot,%text%
}