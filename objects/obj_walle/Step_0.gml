/// @description Makes fucker leave a trail

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
		case 270: //sprite_index=spr_walle_right; break;
		}

if (vspeed != 0 or hspeed != 0)
	{
	audio_play_sound(walle_driving, 1, 1)
	image_speed = 1
	}
else
	{
	audio_stop_sound(walle_driving)
	image_speed = 0
	}
