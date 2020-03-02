/// @description Insert description here
width = 8;  
height = 4; 
a = false
for(i = 0; i < width; i += 1) 
	{
	for(j = 0; j < height; j += 1) 
		{  
		if global.inv[i, j] == 0
			{
			global.inv[i, j] += 1;
			instance_create_depth(i * 32, j * 32, -3, obj_shit_fot_test_inventoral);
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