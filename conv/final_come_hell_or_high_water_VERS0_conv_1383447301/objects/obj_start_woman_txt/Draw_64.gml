/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

function update_text() {
	var text_store = [
		"Thank you for offering to help me,\nyoung lad!",
		"You're welcome.",
		"Alright. Here, carry some of my grocery.",
		"*Old woman gave you 3 bags of grocery*",
		"Mmm... thank you. Let's go across!",
		"Wait! The light is stlil red!"
	]
	if msg == 1 {
		if index >= array_length(text_store) {
			global.allow_move = true
			layer_sequence_destroy(seq)
			instance_destroy()
			obj_plr.plr_speed = 3
			return
		}
		
		draw_set_valign(fa_middle)
		draw_set_font(global.font)
		
		_color = c_black
		
		if index % 2 == 0 _color = c_maroon
		
		if index == array_length(text_store) - 1 {
			_color = c_red
		}
		
		draw_text_color(380, 940, text_store[index], _color, _color, _color, _color, 1)
		if keyboard_check_pressed(vk_space) && !wait {
			wait = true
			index++
			alarm_set(1, 5)
			update_text()
		}
	}
}

update_text()