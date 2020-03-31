/// @description Makes the fucker move
///Check for various parts crucial for moving it's ass along to be present
///If so, moves
if global.charge_percent > 0 and !global.is_charging and global.has_battery and global.has_engine and global.has_wiring
{
	///global.controls has codes for random key groups on keyboard 
	///global.control_group number is a random value of given set assigned as soon as motherboard collapses
	///Default is 0, so you can control the fucker by WASD
	if(keyboard_check(global.controls[0+global.control_group]))
	{
		///Now speed is calculated with use of wiring hp
		///HERE SHOULD BE ADDED RELATION WITH ENGINE HP
		vspeed=global.walle_speed*(obj_wiring_inventoral.part_hp/30000)
	}
	if(keyboard_check(global.controls[1+global.control_group]))
	{
		hspeed=global.walle_speed*(obj_wiring_inventoral.part_hp/30000)
	}
	if(keyboard_check(global.controls[2+global.control_group]))
	{
		vspeed=-global.walle_speed*(obj_wiring_inventoral.part_hp/30000)
	}
	if(keyboard_check(global.controls[3+global.control_group]))
	{
		hspeed=-global.walle_speed*(obj_wiring_inventoral.part_hp/30000)
	}
}