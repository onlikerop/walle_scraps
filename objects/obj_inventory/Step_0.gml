/// @description При кол-ве элементов в ячейке = 0, делает тип "none"
width = 8;
height = 4;
for(i = 0; i < width; i += 1) {
   for(j = 0; j < height; j += 1) {
      temp_var = global.inv[i, j];
	  if (temp_var[1] == 0) and (temp_var[0] != "none"){
		temp_var[0] = "none"
		temp_var[1] = 0
		if temp_var[2] != "none" {instance_destroy(temp_var[2])}
		temp_var[2] = "none"
		global.inv[i, j]=temp_var
		}
   }
}

percent = global.charge_percent div 10000
if (percent) < 10 and percent!=global.last_percent
{
		instance_destroy(instance_nearest(global.charge_ind[9-percent], 0, obj_charge_ind)) 
		global.charge_ind[percent]=0
		global.last_percent = percent
}