/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

function update_text() {
	var text_store = [
		"Welcome! Press <space> to continue.",
		"Please choose a difficulty on the following\nscreen. Type the letter of the\ncorresponding one.",
		"(E) Easy (M) Medium\n(H) Hard (L) Mr. Lopez"
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
		draw_set_halign(fa_center)
		
		_color = c_black
		
		draw_text_color(960, 940, text_store[index], _color, _color, _color, _color, 1)
		if !(index == array_length(text_store) - 1) {
			if keyboard_check_pressed(vk_space) && !wait {
				wait = true
				index++
				alarm_set(1, 5)
				update_text()
			}
		}
		else {
			if keyboard_check_pressed(ord("E")) {
				global.lives = 3
				global.old_woman_speed = 2
				index++
				room_goto(rm_popeyes)
			}
			if keyboard_check(ord("M")) {
				global.lives = 5
				global.old_woman_speed = 0.5
				index++
				room_goto(rm_popeyes)
			}
			if keyboard_check_pressed(ord("H")) {
				global.lives = 8
				global.old_woman_speed = 0.3
				global.spawn_time_sec = 1.1
				global.reload_time = 1.1
				index++
				room_goto(rm_popeyes)
			}
			if keyboard_check(ord("L")) {
				global.lives = 12
				global.old_woman_speed = 0.25
				global.spawn_time_sec = 1.0
				global.reload_time = 1.5
				global.old_man_reload_time = 0.8
				global.mr_lopez = true
				index++
				room_goto(rm_popeyes)
			}
		}
		
	}
}

update_text()