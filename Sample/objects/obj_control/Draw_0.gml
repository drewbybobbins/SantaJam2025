draw_text(x,y,"Esc to Restart")
draw_text(x,y+15,"1 to Main")
draw_text(x,y+30,"2 to Play")
if room=MainMenu {
	draw_sprite_ext(spr_menu_solo,0,room_width/2-sprite_get_width(spr_menu_solo)/2,100,1,1,0,c_white,1)	
	draw_sprite_ext(spr_menu_vs,0,room_width/2-sprite_get_width(spr_menu_vs)/2,150,1,1,0,c_white,1)
}
switch menu_pos {
	case 0:
		draw_circle_colour(room_width/2-sprite_get_width(spr_menu_solo)/2-25,110,15,c_black,c_white,false)
	break;
	
	case 1:
		draw_circle_colour(room_width/2-sprite_get_width(spr_menu_solo)/2-25,160,15,c_black,c_white,false)
	break;
}