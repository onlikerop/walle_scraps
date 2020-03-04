visible = obj_partcell.visible

if part_hp!=0//Checks if the part is already destroyed
{
	part_hp-=1;//Slowly (depends on HP given) destroys the part	
}
else//If it is destroyed, the instance is destroyed and global variable is changed to affect WALLE perfomance
{
	instance_destroy(self)
	global.tracks_amount-=1
}