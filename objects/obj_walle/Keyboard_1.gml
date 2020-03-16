/// @description Makes the fucker move
//Speeds are assigned with global.walle_speed ruled by Step event
if global.charge_percent > 0 and !global.is_charging and global.has_battery and global.has_engine and global.has_wiring
{
	if(keyboard_check(global.controls[0+global.control_group]))
	{
		vspeed=global.walle_speed*(obj_wiring.part_hp/30000)
	}
	if(keyboard_check(global.controls[1+global.control_group]))
	{
		hspeed=global.walle_speed*(obj_wiring.part_hp/30000)
	}
	if(keyboard_check(global.controls[2+global.control_group]))
	{
		vspeed=-global.walle_speed*(obj_wiring.part_hp/30000)
	}
	if(keyboard_check(global.controls[3+global.control_group]))
	{
		hspeed=-global.walle_speed*(obj_wiring.part_hp/30000)
	}
}