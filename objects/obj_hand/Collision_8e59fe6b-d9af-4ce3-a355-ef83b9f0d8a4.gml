/// @description Insert description here
if (random_range(0, 2)+global.hands_amount) >= 1.78356447
{
	width = 8;  
	height = 4; 
	a = false
	for(j = 0; j < height; j += 1) 
		{
		for(i = 0; i < width; i += 1)
			{  
			temp_var = global.inv[i, j]
			if (temp_var[0] == obj_hand_inventoral)
				{
				temp_var[1] += 1;
				global.inv[i, j] = temp_var;
				instance_destroy(self);
				a = true;
				break;
				}
			}
		if a
			{
			break;	
			}
		}
	if (not a)
		{
		for(j = 0; j < height; j += 1)
			{
			for(i = 0; i < width; i += 1)
				{  
				temp_var = global.inv[i, j]
				if (temp_var[0] == "none")
					{
					temp_var[0] = obj_hand_inventoral
					temp_var[1] += 1;
					temp_var[2] = instance_create_depth(i * 32 + 1, j * 32 + 1, -3, obj_hand_inventoral);
					global.inv[i, j] = temp_var
					instance_destroy(self);
					a = true;
					break;
					}
				}
			if a
				{
				break;	
				}
			}
		}
}
else
{
	obj_walle.x=obj_walle.xprevious
	obj_walle.y=obj_walle.yprevious
}
