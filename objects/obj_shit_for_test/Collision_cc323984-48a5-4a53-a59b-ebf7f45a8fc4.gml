/// @description Insert description here
width = 8;  
height = 4; 
a = false
for(j = 0; j < height; j += 1) 
	{
	for(i = 0; i < width; i += 1)
		{  
		temp_var = global.inv[i, j]
		if (temp_var[0] == obj_shit_for_test_inventoral)
			{
			temp_var[1] += 1;
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
if (not a)
	{
	for(i = 0; i < width; i += 1) 
	{
	for(j = 0; j < height; j += 1) 
		{  
		temp_var = global.inv[i, j]
		if (temp_var[0] == "none")
			{
			temp_var[0] = obj_shit_for_test_inventoral
			temp_var[1] += 1;
			temp_var[2] = instance_create_depth(i * 32 + 1, j * 32 + 1, -3, obj_shit_for_test_inventoral);
			global.inv[i, j] = temp_var;
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