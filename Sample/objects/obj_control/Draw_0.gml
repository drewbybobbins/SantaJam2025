//if debug is on, draws a debug array at top left
if global.debug {
	draw_debug_array(debug_array)
}
//draws win text
//watches for gamewin
if max(global.leftscore,global.rightscore)>=win {
	//align text center
	draw_set_halign(fa_center)
	//check winner
	if global.leftscore>global.rightscore {
		draw_text(room_width/2,25,"Player 1 Wins!")
	}
	//check mode
	else if global.mode=="vs" {
		draw_text(room_width/2,25,"Player 2 Wins!")	
	}
	else if global.mode=="solo" {
		draw_text(room_width/2,25,"CPU Wins!")	
	}
}
draw_set_halign(fa_left)

//draws menu sprites and cursor sprite while in menu room
if room=MainMenu {
	draw_text(450,25,"Space to Select")
	draw_sprite_ext(spr_menu_solo,0,room_width/2-sprite_get_width(spr_menu_solo)/2,100,1,1,0,c_white,1)	
	draw_sprite_ext(spr_menu_vs,0,room_width/2-sprite_get_width(spr_menu_vs)/2,150,1,1,0,c_white,1)

	switch menu_pos {
		case 0:
			draw_circle_colour(room_width/2-sprite_get_width(spr_menu_solo)/2-25,110,15,c_black,c_white,false)
			draw_sprite_ext(spr_arrow,0,room_width/2+sprite_get_width(spr_menu_solo)-25,110,1,1,180,c_white,1)
			draw_text(room_width/2+sprite_get_width(spr_menu_solo)-10,99,string(scores[cursor_pos])+"to win")
			draw_sprite_ext(spr_arrow,0,room_width/2+sprite_get_width(spr_menu_solo)+70,110,1,1,0,c_white,1)
		break;
	
		case 1:
			draw_circle_colour(room_width/2-sprite_get_width(spr_menu_solo)/2-25,160,15,c_black,c_white,false)
			draw_sprite_ext(spr_arrow,0,room_width/2+sprite_get_width(spr_menu_solo)-25,160,1,1,180,c_white,1)
			draw_text(room_width/2+sprite_get_width(spr_menu_solo)-10,149,string(scores[cursor_pos])+"to win")
			draw_sprite_ext(spr_arrow,0,room_width/2+sprite_get_width(spr_menu_solo)+70,160,1,1,0,c_white,1)
		break;
	}
}
if room==PlaySpace {
	draw_text(432,10, "Escape to Restart")
	draw_text(50,50,string(global.leftscore))
	draw_text(550,50,string(global.rightscore))
}
//draws a ball sprite when ball is destroyed
if alarm[0]>0 or max(global.leftscore,global.rightscore)>=win {
	draw_sprite(spr_ball,0,room_width/2,room_height/2)	
}