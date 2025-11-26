//checks that game is not over
if max(global.leftscore,global.rightscore)<win {
	global.ballDestroyed=false
	ball=instance_create_depth(room_width/2,room_height/2,0,obj_ball)
}
else instance_scatter(room_width/2,room_height/2,obj_ball,100)
