/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

function update_text() {
	var text_store = [
		"You've acquired the SteakHouse launcher!\nPress 'Z', left MB, or [RT] to use in battle."
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
		
		_color = c_red
				
		draw_text_color(380, 940, text_store[index], _color, _color, _color, _color, 1)
		if (keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face2)) && !wait {			wait = true
			index++
			alarm_set(1, 5)
			update_text()
		}
	}
}

update_text()