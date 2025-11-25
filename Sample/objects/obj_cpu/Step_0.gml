// Inherit the parent event
event_inherited();

if instance_exists(obj_ball) and tracking = false {
	if obj_ball.hspeed > 0 and obj_ball.collide = false {
		if obj_ball.y > y {
			vspeed = 2;
		}
		else if obj_ball.y < y {
			vspeed = -2;
		}
		else if obj_ball.y == y {
			vspeed = 0;
			tracking = true;
			alarm[0] = 10;
		}
	}
}