/// @description Изъятие объекта из ячейки инвентаря
image_index = 1
temp_var = (global.ext_part_inv[x/32-9])
if global.is_item_carried == false and temp_var[0]!="none"
{
	global.latest_cell_id = [x/32-9, y/32]
	global.is_item_carried = true
	global.item_carried_type = temp_var[0]
	temp_var[1]-=1
	global.ext_part_inv[x/32-9]=temp_var
}