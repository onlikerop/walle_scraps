/// @description Creates obj_inventory, also contains global vars
instance_create_depth(400, 300, -1, obj_inventory) 

global.has_r_eye=true
global.has_l_eye=true
global.has_body=true
global.has_motherboard = true
global.has_wiring = true
global.has_battery = true
global.has_solar_charger = true
global.has_engine = true
global.hands_amount=2
global.tracks_amount=2
global.walle_speed=4
global.dir_last = 0
global.is_item_carried = false
global.item_carried_type = "none"
global.latest_cell_id = [-1, -1]
global.charge_percent = 100000
global.max_charge_percent = 100000
global.last_percent = global.charge_percent div 10000
global.is_charging = false
global.controls = [83, 68, 87, 65, 85, 75, 66, 70, 37, 39, 38, 40, 13, 17, 32, 52]
global.control_group = 0