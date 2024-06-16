/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

function update_text() {
	var text_store = [
		"Ouch, ouch... my back!",
		"*falls down*",
		"..."
	]
	if msg == 1 {
		if index >= array_length(text_store) {
			global.allow_move = true
			layer_sequence_destroy(seq)			
			instance_destroy()
			return
		}
		draw_set_valign(fa_middle)
		draw_set_font(global.font)
		
		_color = c_black
		
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
		
		draw_text_color(380, 940, text_store[index], _color, _color, _color, _color, 1)
		if (keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face2)) && !wait {			wait = true
			index++
			alarm_set(1, 5)
			update_text()
		}
	}
}

update_text()