/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

if index == array_length(text_store) - 1 {
	if !execute_once {
		instance_destroy(obj_old_man_passive)
		instance_create_layer(
			960,
			428,
			"oldMan",
			obj_ded_old_man
		)
		instance_create_layer(
			880,
			428,
			"moneyWarp",
			obj_money
		)
		execute_once = true
		obj_plr.plr_speed = 5
	}
}

scr_create_textbox()