/// @description Вложение предмета в ячуйку инвентаря
image_index = 0
temp_var = (global.inv[x/32, y/32])
if (temp_var[0]=="none" or temp_var[0]==global.item_carried_type) and global.item_carried_type != "none"
{
	temp_var[0]=global.item_carried_type 
	temp_var[1]+=1
	if temp_var[2] == "none"{temp_var[2] = instance_create_depth(x+1, y+1, -3, global.item_carried_type)}
	global.inv[x/32, y/32] = temp_var
	
}
else if global.item_carried_type != "none" and global.latest_cell_id != [-1, -1]
{
	temp_var = global.inv[global.latest_cell_id[0], global.latest_cell_id[1]]
	if temp_var[0] == "none" {temp_var[0] = global.item_carried_type}
	if temp_var[2] == "none" {temp_var[2] = instance_create_depth(global.latest_cell_id[0]*32+1, global.latest_cell_id[1]*32+1, -3, global.item_carried_type)}
	temp_var[1] += 1
	global.inv[global.latest_cell_id[0], global.latest_cell_id[1]] = temp_var
}
global.is_item_carried = false
global.item_carried_type = "none"