//updates debug array each step
debug_array=["mode",global.mode,"menu pos", menu_pos]

//on keypress, toggles debug mode on/off
if keyboard_check_pressed(vk_tab) {
	global.debug=(global.debug+1)%2	
}


if room=MainMenu {
	//moves menu cursor up
	if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) {
		menu_pos=(menu_pos+1)%2	
	}
	//moves menu cursor down
	if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) {
		menu_pos=(menu_pos+1)%2	
	}
	//transitions to PlaySpace with mode set to the selected option
	if keyboard_check_pressed(vk_space) {
		switch menu_pos {
			case 0:
				global.mode="solo"
			break;
			case 1:
				global.mode="vs"
			break;
		}
		room_goto_next()
	}
}