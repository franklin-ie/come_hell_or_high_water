/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

function update_text() {
	var text_store = [
		"Thank you, young lad!",
		"Now, I'll be on my merry way to go home and\nbeyond.",
		"Without your help, I wouldn't have made it\npast those nasty cars! Imagine trying to run\nover an old lady...",
		"Have some candy money, boy!",
		"You got 10000 dollars!"
	]
	if msg == 1 {
		if index >= array_length(text_store) {
			global.allow_move = true
			layer_sequence_destroy(seq)
			instance_destroy()
			global.reload_time = .5
			global.has_money = true
			audio_play_sound(snd_acquired, 10, false)
			obj_plr.plr_speed = 5
			global.money += 10000
			return
		}
		draw_set_valign(fa_middle)
		draw_set_font(global.font)
		
		_color = c_black
		
		if index >= array_length(text_store) - 1 {
			_color = c_red
			
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