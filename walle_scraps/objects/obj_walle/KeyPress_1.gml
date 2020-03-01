/// @description Makes the fucker move
if(keyboard_check(87))
	{
	//sprite_index=спрайт_вверх
	vspeed=-4
	hspeed=0
	}
if(keyboard_check(65))
	{
	sprite_index=spr_walle_left
	vspeed=0
	hspeed=-4
	}
if(keyboard_check(68))
	{
	sprite_index=spr_walle_right
	vspeed=0
	hspeed=4
	}
if(keyboard_check(83))
	{
	//sprite_index=спрайт_вниз
	vspeed=4
	hspeed=0
	}
	