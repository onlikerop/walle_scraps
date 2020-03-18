visible = obj_partcell.visible

if part_hp>0
{
	part_hp-=3*(1-(obj_wiring.part_hp/30000))
}
else
{
	instance_destroy(self)
	global.has_motherboard=false
	global.control_group = 4*(round(irandom_range(0, 12)/4))
}