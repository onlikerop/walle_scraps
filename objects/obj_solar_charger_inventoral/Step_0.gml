visible = obj_partcell.visible

if self.x==416 and self.y==32
{
	global.has_solar_charger = true
	if part_hp==0//Checks if the part is already destroyed
	{
		instance_destroy(self)
		global.has_solar_charger=false
	}
}
else
{
	global.has_solar_charger=false	
}

