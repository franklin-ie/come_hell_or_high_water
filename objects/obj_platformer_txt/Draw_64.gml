/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

function update_text() {
	var text_store = [
		"Aw, shucks. Guess I'm getting what I deserved.",
		"<W>/[A]: jump, <S>/[X]: phase through platforms",
	]
	if msg == 1 {
		if index >= array_length(text_store) {
			global.allow_move = true
			instance_destroy()
			return
		}
		draw_set_valign(fa_middle)
		draw_set_font(global.font)
		draw_set_halign(fa_left)
		
		draw_text_color(340, 940, text_store[index], c_black, c_black, c_black, c_black, 1)
		if (keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face2)) && !wait {			wait = true
			index++
			alarm_set(1, 5)
			update_text()
		}
	}
}

update_text()