visible = obj_partcell.visible

if self.x==384 and self.y==32
{
	global.has_battery = true
}
else
{
	global.has_battery=false	
}

if last_charge_dmg!=0 and !global.is_charging and global.has_battery
{
	part_hp-=last_charge_dmg
	last_charge_dmg = 0
}

if part_hp==0//Checks if the part is already destroyed
{
	instance_destroy(self)
	global.has_battery=false
}