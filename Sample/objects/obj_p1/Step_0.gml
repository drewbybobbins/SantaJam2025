// Inherit the parent event
event_inherited();

// Define player inputs
var key_up = keyboard_check(ord("W"));
var key_down = keyboard_check(ord("S"));


// Change player 1 speed
if (key_up){
	vspeed = -2
};
if (key_down){
	vspeed = 2;
}
if not key_down and not key_up {
	vspeed = 0;
};
