visible = obj_partcell.visible

if !global.has_body or global.tracks_amount!=2
{
	if part_hp!=0//Checks if the part is already destroyed
	{
		part_hp-=2-global.tracks_amount-real(!global.has_body);//Slowly (depends on HP given) destroys the part	
	}
	else//If it is destroyed, the instance is destroyed and global variable is changed to affect WALLE perfomance
	{
		instance_destroy(self)
		global.has_engine=false
	}
}