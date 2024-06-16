/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

function update_text() {
	var text_store = [
		"Welcome to the maze!\nPress space to continue.",
		"To win, simply come down this straight path\nto the Popeye's",
		"Good luck!"
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
		draw_set_halign(fa_left)
		
		draw_text_color(380, 940, text_store[index], c_black, c_black, c_black, c_black, 1)
		if keyboard_check_pressed(vk_space) && !wait {
			wait = true
			index++
			alarm_set(1, 5)
			update_text()
		}
	}
}

update_text()