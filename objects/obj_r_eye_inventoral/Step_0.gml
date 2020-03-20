visible = obj_partcell.visible

if self.x == 288 and self.y==0
{
	global.has_r_eye = true
}
else
{
	global.has_r_eye=false	
}

if part_hp!=0 and global.has_r_eye//Checks if the part is already destroyed
{
	part_hp-=1;//Slowly (depends on HP given) destroys the part	
}
else//If it is destroyed, the instance is destroyed and global variable is changed to affect WALLE perfomance
{
	if part_hp <= 0
	{
		instance_destroy(self)
	}
	global.has_r_eye=false
}