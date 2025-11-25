// Position ball at center of room
x = room_width / 2;
y = room_height / 2;

// Set speed and direction of ball on creation
speed = 5;
direction = irandom_range(-45, 45) + (irandom_range(0,1) * 180);

//Instance global variable to control ball
global.ballDestroyed = false;

collide = false;