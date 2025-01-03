/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

function update_text() {
	var text_store = [
		"You reach into your wallet",
		"\nWould you like to enter? Y/N (keyboard)"
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
		
		_msg = ""
		
		if index == array_length(text_store) - 1 {
			var _money = 0
			_msg = "You have " + /*(global.hell ? 100 : 10000)*/ string(global.money) + " dollars." 
		}
		
		draw_text_color(380, 940, _msg + text_store[index], _color, _color, _color, _color, 1)
		if !(index == array_length(text_store) - 1) {
			if keyboard_check_pressed(vk_space) && !wait {
				wait = true
				index++
				alarm_set(1, 5)
				update_text()
			}
		}
		else {
			if keyboard_check_pressed(ord("Y")) {
				if global.hell {
					obj_plr.x = 940
					obj_plr.y = 900
					global.allow_move = true
					room_goto(rm_hell)
				}
				else {
					room_goto(rm_end_paradise)
				}
				index++
			}
			if keyboard_check(ord("N")) {
				draw_text_color(380, 940, "...", _color, _color, _color, _color, 1)
				index++
			}
		}
		
	}
}

update_text()