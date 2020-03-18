/// @description Creates obj_inventory, also contains global vars

///A set of global variables to describe the current state of fucker
global.has_r_eye=false
global.has_l_eye=false
global.has_body=false
global.has_motherboard = false
global.has_wiring = false
global.has_battery = false
global.has_solar_charger = false
global.has_engine = false
global.hands_amount=0
global.tracks_amount=0

///Global variables responsible for moving and changin fucker's sprite
global.walle_speed=4
global.dir_last = 0

///Variables responsible for inventory's work
global.is_item_carried = false
global.item_carried_type = "none"
global.latest_cell_id = [-1, -1]

///Variables in charge of charge and charging (heh, got that pun?)
global.charge_percent = 100000
global.max_charge_percent = 100000
global.last_percent = global.charge_percent div 10000
global.is_charging = false

///Variables linked to controls of fucker and their random change
global.controls = [83, 68, 87, 65, 85, 75, 66, 70, 37, 39, 38, 40, 13, 17, 32, 52]
global.control_group = 0

instance_create_depth(400, 300, -1, obj_inventory) 
