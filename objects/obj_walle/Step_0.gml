/// @description Makes fucker do things

///Assigns global.dir_last needed to fit trouble with constant sprite change at the end of movement
if (vspeed!=0 or hspeed!=0)
{
	global.dir_last=direction
}

///Makes fucker leave a trail
if (global.dir_last==0 or global.dir_last==180)
{
	instance_create_depth(x, y, 99, obj_track_h)
}
if (global.dir_last==90 or global.dir_last==270)
{
	instance_create_depth(x, y, 99, obj_track_v)
}

///Makes fucker change his sprite according to the direction of movement
switch(global.dir_last)
{
	case 0: sprite_index=spr_walle_right; break;
	case 90: sprite_index=spr_walle_up_no_bp; break;
	case 180: sprite_index=spr_walle_left; break;
	case 270: //sprite_index=spr_walle_down; break;
}

///Makes fucker play a weird sound THAT NEEDS TO BE REPLACED WITH SOMETHING AUTHENTIC
if (vspeed != 0 or hspeed != 0)
{
	audio_play_sound(walle_driving, 1, 1)
	image_speed = 1
	///Makes fucker dicharge while he is moving
	if global.charge_percent!=0
	{
		///The charge needed to move is based on amount of tracks, health of wiring and health of engine
		global.charge_percent-=30/(global.tracks_amount+1)*(1-(obj_wiring_inventoral.part_hp/30000))*(1-(obj_engine_inventoral.part_hp/20000))
	}
}
else
{
	audio_stop_sound(walle_driving)
	image_speed = 0
}

//Calculates fucker's speed depending on how many tracks are present
global.walle_speed = global.tracks_amount * 1.5 + 1

///Assigns global.max_charge_percent describing how much energy fucker can have
if global.has_battery
{
	///The max percent is based on the health of battery
	global.max_charge_percent = 100000 * (obj_battery_inventoral.part_hp / 100000)
}

///Checks for eye amount and creates an layer that is imagined to represent vision troubles
if (global.has_l_eye = false or global.has_r_eye = false) and !instance_exists(obj_eye_pizdec_const)
{
	instance_create_depth(0, 0, -10, obj_eye_pizdec_const)
	instance_create_depth(0, 0, -11, obj_eye_pizdec_temp)
}

///Checks if all parts needed for recharging are present and recharging process is triggered. 
///If so, adds to global.charge_percent and decreases health of various parts included
if global.has_solar_charger and global.has_battery and global.charge_percent<global.max_charge_percent-9 and global.is_charging 
{
	///Charge per step is based on solar charger and wiring state
	global.charge_percent += round(10*(obj_solar_charger_inventoral.part_hp/20000)*(obj_wiring_inventoral.part_hp/30000))
	obj_solar_charger_inventoral.part_hp -=1
	obj_wiring_inventoral.part_hp -=1
	obj_battery_inventoral.last_charge_dmg += 3
}

///This is needed for random events (like control group change) to be truly random every time
randomize()