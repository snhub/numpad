;

MultFunction:

if(layer = LAYER_MENU) {
	setLayer(LAYER_NUMBERS)
}
else if(layer = LAYER_MOUSE) {
	Click WheelRight
}
else if(layer = LAYER_CURSOR) {
	
}
else if(layer = LAYER_LETTERS) {
	
}
else if(layer = LAYER_LETTERS1) {
	
}
else if(layer = LAYER_LETTERS2) {
	Send {ß}
}
else if(layer = LAYER_NUMBERS) {
	Send {0}
}
else if(layer = LAYER_SIGNS) {
	Send {@}
}
else if(layer = LAYER_SIGNS1) {
	Send {^}
}
else if(layer = LAYER_FKEYS) {
	Send {F11}
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	Send ^y
}
else if(layer = LAYER_MOVEGUI) {
	
}



return