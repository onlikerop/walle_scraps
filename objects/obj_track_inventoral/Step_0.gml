visible = obj_partcell.visible

if (self.x == 448 or self.x==480) and self.y==0
{
	if part_hp > 0 //Checks if the part is already destroyed
	{
		part_hp-=round( sqrt( power(obj_walle.vspeed, 2) + power( obj_walle.vspeed, 2) + 2 * power( abs(obj_walle.vspeed) + abs(obj_walle.hspeed), 1/3) ) / 2 ); //Slowly (depends on HP given) destroys the part
	}
	else //If it is destroyed, the instance is destroyed and global variable is changed to affect WALLE perfomance
	{
		instance_destroy(self)
		global.tracks_amount-=1
	}
}