/// @description Makes the fucker move
//Speeds are assigned with global.walle_speed ruled by Step event
if global.charge_percent > 0 and global.is_charging = false
{
	if(keyboard_check(87))
	{
		vspeed=-global.walle_speed
	}
	if(keyboard_check(65))
	{
		hspeed=-global.walle_speed
	}
	if(keyboard_check(68))
	{
		hspeed=global.walle_speed
	}
	if(keyboard_check(83))
	{
		vspeed=global.walle_speed
	}
}