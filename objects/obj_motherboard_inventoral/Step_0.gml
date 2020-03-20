visible = obj_partcell.visible

if self.x==320 and self.y==32
{
	global.has_motherboard = true
}
else
{
	global.has_motherboard=false	
}

if part_hp>0 and global.has_motherboard
{
	part_hp-=3*(1-(obj_wiring_inventoral.part_hp/30000))
}
else
{
	if part_hp <= 0
	{
		instance_destroy(self)
	}
	global.has_motherboard=false
	global.control_group = 4*(round(irandom_range(0, 12)/4))
}