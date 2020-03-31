/// @description Изъятие объекта из ячейки инвентаря
image_index = 1
temp_var = (global.ext_part_inv[x/32-9])
if global.is_item_carried == false and temp_var[0]!="none"
{
	global.latest_cell_id = [x/32-9, y/32]
	global.is_item_carried = true
	global.item_carried_type = temp_var[0]
	temp_var[1]-=1
	// Попытки реализации проверки на тип, после чего присвоить temp_var[3] значение детали
	/*if temp_var[0] in ext_parts_list or temp_var[0] in int_parts_list
	{
	temp_var[3] = temp_var[2].part_hp
	}*/
	global.ext_part_inv[x/32-9]=temp_var
}