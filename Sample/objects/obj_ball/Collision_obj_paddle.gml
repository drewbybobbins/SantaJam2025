// Change direction when colliding with paddle

if collide = false {
	hspeed = hspeed * -1;
	collide = true;
	alarm[0] = 30;
}