/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

function update_text() {
	var text_store = [
		"*You decide to help*",
		"*You open your bag and shoot out a banana\npeel*",
		"*You take out a bottle of iodine*",
		"*You put the starchy banana in iodine, and\nit turns from orange to black*",
		"*You apply the power of AP Bio to the old\nman, and he wakes.*",
		
		// Old Man
		"Thanks, folks!",
		"...",
		"You probably don't know, but I'm actually\nMr. Beast.",
		"...",
		"You don't believe me, do you?",
		"...",
		"Ok, fine. Here's 10,000 dollars.",
		"*You receive $10,000!!!\nThat's 1727.11571675 Big Macs!*",
		"Funny, you look like that guy who brought\nme to my knees..."
	]
	if msg == 1 {
		if index >= array_length(text_store) {
			global.allow_move = true
			layer_sequence_destroy(seq)			
			instance_destroy()
			global.money += 9900
			return
		}
		draw_set_valign(fa_middle)
		draw_set_font(global.font)
		
		_color = c_grey
		
		if index == 4 {
			instance_destroy(obj_ded_old_man)
			_color = c_black
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