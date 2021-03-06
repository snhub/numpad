#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent
#SingleInstance,Force

#Include config.ahk
#Include constants.ahk

#Include globvar.ahk

;SetNumlockState AlwaysOn

layer := 1
guix := gui_initial_x
guiy := gui_initial_y
guih := 204
guiw := 164

guih += 50

/*
	TODO
	- improve mouse
	- alt-Tab
	- Menu -> Escape, Space
	- Alt-Tab
	- Cursor -> Tab, Enter
	- Numbers -> Numlock hangs
	
	- mouse (click, rightclick, scrollup, scrolldn)
	- extra (windows, context menu)
	- cursor, (home, end, pgup, pgdn)
	- a-z
	- 1-9
	- shift (layer shift ctrl alt
	- edit (enter space tab esc del bkspc)
	- signs ( . , : ; + - _ ! " ' $ % & # / \ = ? ( ) < > { } [ ] * | ° € @ ~) #29
	- F keys
	- macros
	- copy/paste
	
	- layer key
	- 1 mouse
	- 2 cursor
	- 3 a-z
	- 4 signs
	- function keys
	- 5 macros
	
	1 Mouse
	|    |    |
	| up |    |
	left|lclk|rght|
	| dn |    |
	|    |    |
	
	
	menu |      |      |
	|  up  |scrlup|
	left |Lclck |right |rclick
	| down |scrldn|
	menu |      |      |
	
*/

#Include hotkeys.ahk

#Include gui.ahk

Gui, Color, 446699
Gui +LastFound +AlwaysOnTop +ToolWindow
WinSet, TransColor, 446699
Gui -Caption
Gui, Show, x%guix% y%guiy% h%guih% w%guiw%, Numpad

setLayer(LAYER_MOUSE)
;setLayer(99)

;SetTimer, main, 10

init3x3Grid()

CoordMode Mouse, Screen

return


EnterClick:

ReleaseShift()
ReleaseControl()
ReleaseAlt()
Send {Shift Up}
Send {Control Up}
Send {Alt Up}
Reload

return


#Include labels.ahk
#Include layer.ahk
#Include debug.ahk
/*
	
	
	
	
	
	
	
*/

#Include logic.ahk
#Include buttonsGui.ahk
#Include draw.ahk
