/// @description Insert description here
// You can write your code in this editor
image_index = 1
temp_var = (global.inv[x/32, y/32])
if global.is_item_carried == false and temp_var[0]!="none"
{
	global.is_item_carried = true
	global.item_carried_type = temp_var[0]
	global.item_carried_pic  = temp_var[2]
	temp_var[1]-=1
	global.inv[x/32, y/32]=temp_var
}