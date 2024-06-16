/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

function update_text() {
	var text_store = [
		"Hey! What are you trying to do?",
		"I dropped that money there.\nDon't you dare try to take it!",
		"I'm warning you, STAY AWAY"
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
			_color = c_red
			if !global.has_weapon text_store[2] = "You don't even have a weapon,\nand you dare face me?"
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