visible = obj_partcell.visible

if self.x==352 and self.y==32
{
	global.has_wiring = true
	if !global.has_body
	{
		if part_hp!=0//Checks if the part is already destroyed
		{
			part_hp-=1;//Slowly (depends on HP given) destroys the part	
		}
		else//If it is destroyed, the instance is destroyed and global variable is changed to affect WALLE perfomance
		{
			instance_destroy(self)
			global.has_wiring=false
		}
	}
}
else
{
	global.has_wiring=false	
}
