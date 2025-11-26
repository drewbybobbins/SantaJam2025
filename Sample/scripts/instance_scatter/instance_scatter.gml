function instance_scatter(xpos,ypos,instance,num){
	for (var i=0;i<num;i++) {
		b=instance_create_depth(xpos,ypos,0,instance)
		b.speed=irandom(50)
		b.direction=irandom(360)
	}
}