// Change direction when colliding with paddle

if collide = false {
	hspeed = hspeed * -1;
	direction += irandom_range(-5,5); // Random change in direction
	collide = true;
	alarm[0] = 30;
	
	if other.vspeed == 2 begin
		if other.x < room_width / 2 begin
			direction += irandom_range(-15, -30);
		end
		else begin
			direction += irandom_range(15, 30)
		end
	end
	else begin
		if other.x < room_width / 2 begin
			direction += irandom_range(15, 30);
		end
		else begin
			direction += irandom_range(-15, -30)
		end
	end
}