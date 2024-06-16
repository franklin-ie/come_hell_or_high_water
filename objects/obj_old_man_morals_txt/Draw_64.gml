/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

function update_text() {
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
		
		draw_text_color(380, 940, text_store[index], _color, _color, _color, _color, 1)
		if !(index == array_length(text_store) - 1) {
			if (keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face2)) && !wait {				wait = true
				index++
				alarm_set(1, 5)
				update_text()
			}
		}
		else {
			if (keyboard_check_pressed(ord("Y")) || gamepad_button_check(0, gp_face4)) {
				global.hell = false
				var _txt = obj_old_man_thanks_txt
				if global.mr_lopez _txt = obj_old_lopez_thanks_txt
				instance_create_layer(0, 0, "textPopup", _txt)
				index++
			}
			if (keyboard_check(ord("N")) || gamepad_button_check(0, gp_face3)) {
				global.hell = true
				draw_text_color(380, 940, "...", _color, _color, _color, _color, 1)
				index++
			}
		}
		
	}
}

update_text()