/// @description Makes fucker leave a trail, manages sprite change, makes fucker care about his parts and play sound

if (vspeed!=0 or hspeed!=0)
{
	global.dir_last=direction
}

if (global.dir_last==0 or global.dir_last==180)
{
	instance_create_depth(x, y, 99, obj_track_h)
}
if (global.dir_last==90 or global.dir_last==270)
{
	instance_create_depth(x, y, 99, obj_track_v)
}

switch(global.dir_last)
{
	case 0: sprite_index=spr_walle_right; break;
	case 90: sprite_index=spr_walle_up_no_bp; break;
	case 180: sprite_index=spr_walle_left; break;
	case 270: //sprite_index=spr_walle_down; break;
}

if (vspeed != 0 or hspeed != 0)
{
	audio_play_sound(walle_driving, 1, 1)
	image_speed = 1
	if global.charge_percent!=0
	{
		global.charge_percent-=30/(global.tracks_amount+1)*(1-(obj_wiring.part_hp/30000))*(1-(obj_engine.part_hp/20000))
	}
}
else
{
	audio_stop_sound(walle_driving)
	image_speed = 0
}

//Calculates WALLE's speed depending on how many tracks are present
global.walle_speed = global.tracks_amount * 1.5 + 1

if global.has_battery
{
	global.max_charge_percent = 100000 * (obj_battery.part_hp / 100000)
}

if (global.has_l_eye = false or global.has_r_eye = false) and !instance_exists(obj_eye_pizdec_const)
{
	instance_create_depth(0, 0, -10, obj_eye_pizdec_const)
	instance_create_depth(0, 0, -11, obj_eye_pizdec_temp)
}

if global.has_solar_charger and global.has_battery and global.charge_percent<global.max_charge_percent-9 and global.is_charging 
{
	global.charge_percent += round(10*(obj_solar_charger.part_hp/20000)*(obj_wiring.part_hp/30000))
	obj_solar_charger.part_hp -=1
	obj_wiring.part_hp -=1
	obj_battery.last_charge_dmg += 3
}

randomize()