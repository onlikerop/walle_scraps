/// @description Creating an inventory with inv cells inside it
// You can write your code in this editor

// Здесь при создании этого объекта он должен создавать поле 8x4 из объекта ячейки инвенатря, но функция instance_create устаревшая, а новой я не нашёл
width = 8;  
height = 4;   
for(i = 0; i < width; i += 1) {  
   for(j = 0; j < height; j += 1) {   
      global.inv[i, j] = 0;
	  instance_create_depth(i * 32, j * 32, -2, obj_invcell);
   }
}