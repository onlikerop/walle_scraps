/// @description Makes fucker leave a trail
if (direction==0 or direction==180)
	{
	instance_create_depth(x, y, 99, obj_track_h)
	}
if (direction==90 or direction==270)
	{
	instance_create_depth(x, y, 99, obj_track_v)
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
