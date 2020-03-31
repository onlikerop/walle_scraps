///By my will he won't be able to recharge while moving 
///(also it would have no sense at all as he would spend more than he could get)
hspeed = 0
vspeed = 0

///This block should change his sprite to the same, but recharging
switch(global.dir_last)
{
	case 0: sprite_index=spr_walle_right_recharging; break;
	case 90: sprite_index=spr_walle_right_recharging; break;
	case 180: sprite_index=spr_walle_left_recharging; break;
	case 270: sprite_index=spr_walle_left_recharging; break;
}

///Sets global.is_charging to true to trigger recharging procces in Step event
global.is_charging = true