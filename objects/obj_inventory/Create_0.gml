/// @description Creating an inventory with inv cells inside it
// You can write your code in this editor

// Здесь при создании этого объекта он должен создавать поле 8x4 из объекта ячейки инвенатря, но функция instance_create устаревшая, а новой я не нашёл
width = 8;  
height = 4;   
for(i = 0; i < width; i += 1) {
   for(j = 0; j < height; j += 1) {
	  cell[0] = "none"; // Присваиваем тип "none" ячейке, т.к. там ничего не лежит
	  cell[1] = 0; // Присваиваем количество предметов = 0
	  cell[2] = pointer_null
      global.inv[i, j] = cell;
	  instance_create_depth(i * 32, j * 32, -2, obj_invcell);
   }
}

//Lists of parts defined
ext_parts_list = [obj_r_eye_inventoral, obj_l_eye_inventoral, obj_hand_inventoral, obj_hand_inventoral, obj_body_inventoral, obj_track_inventoral, obj_track_inventoral]
int_parts_list = ["m_board", "wiring", "s_battery", "baterry", "h_liquids"]

//Creates a row of 7 obj_partcell for l_eye, r_eye, l_hand, r_hand, body, r_track, l_track
//and lower row for internal parts (the commented piece)

for(i = 0; i < 7; i += 1) {
	  part_cell[0] = ext_parts_list[i]; //Each cell in row is defined py type of part that fits it
      global.ext_part_inv[i, 1] = part_cell;
	  instance_create_depth((width+1)*32+i * 32, 0, -2, obj_partcell);
	  instance_create_depth((width+1)*32+i * 32, 0, -3, ext_parts_list[i]);//As we do have those parts from beginning? I spawn them rightaway
	  
}

//for(i = 0; i < 5; i += 1) 
//{
//	  part_cell[0] = int_parts_list[i];
//      global.int_part_inv[i, 1] = part_cell;
//	  instance_create_depth((width+2)*32+i * 32, 32, -2, obj_partcell);
	  
//}