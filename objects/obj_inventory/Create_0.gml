/// @description Creating an inventory with inv cells inside it

width = 8;  
height = 4;   
for(i = 0; i < width; i += 1) 
{
   for(j = 0; j < height; j += 1) 
   {
      global.inv[i, j] = ["none",0,"none"];
	  instance_create_depth(i * 32, j * 32, -2, obj_invcell);
   }
}

//Lists of parts defined
ext_parts_list = [obj_r_eye_inventoral, obj_l_eye_inventoral, obj_hand_inventoral, obj_hand_inventoral, obj_body_inventoral, obj_track_inventoral, obj_track_inventoral]
int_parts_list = [obj_motherboard_inventoral, obj_wiring_inventoral, obj_battery_inventoral, obj_solar_charger_inventoral, obj_engine_inventoral]

//Creates a row of 7 obj_partcell for l_eye, r_eye, l_hand, r_hand, body, r_track, l_track
//and lower row for internal parts (the commented piece)

for(i = 0; i < 7; i ++) 
{
      global.ext_part_inv[i] = [ext_parts_list[i],1];
	  instance_create_depth((width+1)*32+i * 32, 0, -2, obj_partcell);
	  instance_create_depth((width+1)*32+i * 32, 0, -3, ext_parts_list[i]);//As we do have those parts from beginning? I spawn them rightaway
	  
}

for(j = 0; j < 5; j ++) 
{
      global.int_part_inv[j] = [int_parts_list[j],1];
	  instance_create_depth((width+2)*32+j * 32, 32, -2, obj_partcell);
	  instance_create_depth((width+2)*32+j * 32, 32, -3, int_parts_list[j]);
	  
}

instance_create_depth(640, 0, -2, obj_charge_meter)
x_of_ind = 641
for (i=0; i<10; i++)
{
	instance_create_depth(x_of_ind, 0, -3, obj_charge_ind);
	global.charge_ind[i] = x_of_ind;
	x_of_ind+=16;
}