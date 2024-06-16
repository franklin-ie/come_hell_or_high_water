// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377

/// @function							scr_create_textbox(_last_color)
/// @description						Creates a generic textbox used for communication 
/// @return {void}
function scr_create_textbox() {
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
				
		draw_text_color(380, 940, text_store[index], color, color, color, color, 1)
		if (keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face2)) && !wait {
			wait = true
			index++
			alarm_set(1, 5)
			scr_create_textbox()
		}
	}
}