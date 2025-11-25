//if debug is on, draws a debug array at top left
if global.debug {
	draw_debug_array(debug_array)
}
draw_text(x,y,"Esc to Restart")
draw_text(x,y+15,"1 to Main")
draw_text(x,y+30,"2 to Play")
draw_text(x,y+45,global.debug)

//draws menu sprites and cursor sprite while in menu room
if room=MainMenu {
	draw_sprite_ext(spr_menu_solo,0,room_width/2-sprite_get_width(spr_menu_solo)/2,100,1,1,0,c_white,1)	
	draw_sprite_ext(spr_menu_vs,0,room_width/2-sprite_get_width(spr_menu_vs)/2,150,1,1,0,c_white,1)

	switch menu_pos {
		case 0:
			draw_circle_colour(room_width/2-sprite_get_width(spr_menu_solo)/2-25,110,15,c_black,c_white,false)
		break;
	
		case 1:
			draw_circle_colour(room_width/2-sprite_get_width(spr_menu_solo)/2-25,160,15,c_black,c_white,false)
		break;
	}
}
//draws a ball sprite when ball is destroyed
if alarm[0]>0 {
	draw_sprite(spr_ball,0,room_width/2,room_height/2)	
}