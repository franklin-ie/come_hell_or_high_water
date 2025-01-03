/// @description https://forum.gamemaker.io/index.php?threads/text-popup-when-opening-a-chest.97093/



msg = 0
alarm_set(0, 30)

seq = layer_sequence_create("textBox", 960, 700, seq_txtbox)
index = 0
wait = false
global.allow_move = false
global.mr_lopez = false

global.font = font_add("fnt_monocraft.otf", 32, false, false, 32, 128)
global.old_woman_speed = 0.5
global.old_man_reload_time = 1.5 // secs
global.difficulty = true
global.spawn_time_sec = 1.5
global.car_speed = 10

text_store = [
	"Welcome! Press <space>[B] to continue.",
	"Please choose a difficulty on the following\nscreen. Type the letter of the\ncorresponding one.",
	"[Y] (E)asy [X] (M)edium\n[START] (H) Hard [A] (L) Mr. Lopez"
]

// complex function
function difficulty_selector() {
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
			if (keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face2)) && !wait {
				wait = true
				index++
				alarm_set(1, 5)
				difficulty_selector()
			}
		}
		else {
			if (keyboard_check_pressed(ord("E")) || gamepad_button_check(0, gp_face4)) {
				global.lives = 3
				global.old_woman_speed = 2
				global.car_speed = 6
				index++
				room_goto(rm_popeyes)
			}
			if (keyboard_check(ord("M")) || gamepad_button_check(0, gp_face3)) {
				global.lives = 5
				global.old_woman_speed = 0.5
				global.car_speed = 8
				index++
				room_goto(rm_popeyes)
			}
			if (keyboard_check_pressed(ord("H")) || gamepad_button_check(0, gp_start))  {
				global.lives = 8
				global.old_woman_speed = 0.3
				global.spawn_time_sec = 1.1
				global.reload_time = 1.1
				index++
				room_goto(rm_popeyes)
			}
			if (keyboard_check(ord("L")) || gamepad_button_check(0, gp_face1)) {
				global.lives = 12
				global.old_woman_speed = 0.25
				global.spawn_time_sec = 1.0
				global.reload_time = 1.5
				global.old_man_reload_time = 0.8
				global.mr_lopez = true
				global.car_speed = 12
				index++
				room_goto(rm_popeyes)
			}
		}
		
	}
}