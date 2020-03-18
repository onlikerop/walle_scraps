visible = obj_partcell.visible

if self.x == 416 and self.y==0
{
	global.has_body = true
}
else
{
	global.has_body=false	
}

if part_hp!=0 and global.has_body//Checks if the part is already destroyed
{
	part_hp-=1;//Slowly (depends on HP given) destroys the part	
}
else//If it is destroyed, the instance is destroyed and global variable is changed to affect WALLE perfomance
{
	instance_destroy(self)
	global.has_body=false
}