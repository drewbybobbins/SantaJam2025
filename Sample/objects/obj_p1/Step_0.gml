// Inherit the parent event
event_inherited();

// Define player inputs
var key_up = keyboard_check(ord("W"));
var key_down = keyboard_check(ord("S"));

// Change player 1 speed
if (key_up) {
	vspeed = -2
}
else if (key_down) {
	vspeed = 2;
}
else {
	vspeed = 0;
};