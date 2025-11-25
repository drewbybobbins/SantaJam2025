function draw_debug_array(array,xpos=0,ypos=0) {
//expects an array of even length, where each pair of entries is (string of variable name)+(variable)

//loops through the array in increments of 2
	for (var i=0; i<array_length(array); i=i+2) {
		//prints variable string name + variable value
		draw_text(xpos,ypos+5*i,string(array[i])+"="+string(array[i+1]))
	}
}