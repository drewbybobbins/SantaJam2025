// Inherit the parent event
event_inherited();

// Define player inputs
var key_up = keyboard_check(vk_up);
var key_down = keyboard_check(vk_down);

// Set correct sprite orientation at start
image_angle = 90;

// Change player 2 speed
if (key_up) {
	vspeed = -2
}
else if (key_down) {
	vspeed = 2;
}
else {
	vspeed = 0;
};