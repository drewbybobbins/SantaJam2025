//controls in main menu
if room=MainMenu {
	//moves menu cursor up
	if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) {
		menu_pos=(menu_pos+1)%2	
	}
	//moves menu cursor down
	if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) {
		menu_pos=(menu_pos+1)%2	
	}
	if keyboard_check_pressed(vk_space) {
		switch menu_pos {
			case 0:
				global.mode="solo"
			break;
			case 1:
				global.mode="vs"
		}
		room_goto_next()
		
	}
}
