visible = obj_partcell.visible


if (self.x == 352 or self.x==384) and self.y==0
{
	if global.hands_amount<2
	{
		global.hands_amount += 1
	}
	if part_hp!=0//Checks if the part is already destroyed
	{
		part_hp-=1;//Slowly (depends on HP given) destroys the part	
	}
	else//If it is destroyed, the instance is destroyed and global variable is changed to affect WALLE perfomance
	{
		instance_destroy(self)
		global.hands_amount-=1
	}
}
else
{
	global.hands_amount-=1	
}