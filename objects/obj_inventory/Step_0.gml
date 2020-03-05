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