visible = obj_partcell.visible

if part_hp==0//Checks if the part is already destroyed
{
	instance_destroy(self)
	global.has_solar_charger=false
}
