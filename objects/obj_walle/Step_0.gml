/// @description Makes fucker leave a trail
if (direction==0 or direction==180)
	{
	instance_create_depth(x, y, 99, obj_track)
	}
if (direction==90 or direction==270)
	{
	//instance_create_depth(x, y, 99, obj_track)
	}
if (vspeed != 0 or hspeed != 0)
	{
	audio_play_sound(walle_driving, 1, 1)
	}
else
	{
	audio_stop_sound(walle_driving)
	}
