visible = obj_partcell.visible

if self.x==416 and self.y==32
{
	global.has_solar_charger = true
}
else
{
	global.has_solar_charger=false	
}

if part_hp==0 and global.has_solar_charger //Checks if the part is already destroyed
{
	
	if part_hp <= 0
	{
		instance_destroy(self)
	}
	global.has_solar_charger=false
}