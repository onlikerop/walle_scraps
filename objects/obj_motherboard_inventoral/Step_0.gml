visible = obj_partcell.visible

if self.x==320 and self.y==32
{
	global.has_motherboard = true
	if part_hp>0
	{
		part_hp-=3*(1-(obj_wiring_inventoral.part_hp/30000))
	}
	else
	{
		instance_destroy(self)
		global.has_motherboard=false
		global.control_group = 4*(round(irandom_range(0, 12)/4))
	}
}
else
{
	global.has_motherboard=false	
}
