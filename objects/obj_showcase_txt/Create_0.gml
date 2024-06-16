/// @description https://forum.gamemaker.io/index.php?threads/text-popup-when-opening-a-chest.97093/



msg = 0
alarm_set(0, 30)

seq = layer_sequence_create("textBox", 960, 700, seq_txtbox)
index = 0
wait = false
global.allow_move = false

text_store = [
	"Would you like to see the math behind the \ngame? (I promise the video is high/decent\nquality) Y[Y]/N[X] (keyboard/controller)",
]

function options() {
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
		
		draw_text_color(380, 940, text_store[index], _color, _color, _color, _color, 1)
		if !(index == array_length(text_store) - 1) {
			if (keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face2)) && !wait {				wait = true
				index++
				alarm_set(1, 5)
				options()
			}
		}
		else {
			if (keyboard_check_pressed(ord("Y")) || gamepad_button_check(0, gp_face4)) {
				room_goto(rm_showcase)
			}
			if (keyboard_check(ord("N")) || gamepad_button_check(0, gp_face3)) {
				game_end()
			}
		}
		
	}
}