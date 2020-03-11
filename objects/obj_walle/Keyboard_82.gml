hspeed = 0
vspeed = 0
switch(global.dir_last)
{
	case 0: sprite_index=spr_walle_right_recharging; break;
	case 90: sprite_index=spr_walle_right_recharging; break;
	case 180: sprite_index=spr_walle_left_recharging; break;
	case 270: sprite_index=spr_walle_left_recharging; break;
}

global.is_charging = true