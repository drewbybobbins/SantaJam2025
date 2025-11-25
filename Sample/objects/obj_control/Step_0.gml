//updates debug array each step
debug_array=["mode",global.mode,"menu pos", menu_pos,"left score",global.leftscore,"right score",global.rightscore,"alarm",alarm[0],"p1",instance_exists(obj_p1)]

//on keypress, toggles debug mode on/off
if keyboard_check_pressed(vk_tab) {
	global.debug=(global.debug+1)%2	
}

//enables menu controls if the room is MainMenu
if room==MainMenu {
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
		room_goto_next()
		switch menu_pos {
			case 0:
				global.mode="solo"
				instance_create_depth(50,room_height/2,0,obj_p1)
				instance_create_depth(550,room_height/2,0,obj_cpu)
			break;
			case 1:
				global.mode="vs"
				instance_create_depth(50,room_height/2,0,obj_p1)
				instance_create_depth(550,room_height/2,0,obj_p2)
			break;
		}
		
		
	}
}

//checks for ball being destroyed
if global.ballDestroyed and alarm[0]==-1 {
	alarm[0]= 120
	if ceil(global.sidescored)<1 {
		global.rightscore+=1	
	}
	else global.leftscore+=1
}