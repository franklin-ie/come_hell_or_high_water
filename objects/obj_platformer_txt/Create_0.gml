/// @description https://forum.gamemaker.io/index.php?threads/text-popup-when-opening-a-chest.97093/



msg = 0

alarm_set(0, 30)

index = 0
wait = false
global.allow_move = false

text_store = [
	"Aw, shucks. Guess I'm getting what I deserved.",
	"<W>/[A]: jump, <S>/[X]: phase through platforms",
]

color = c_black

// needs its own func bc of lack of sequence (camera)
function txt() {
	if msg == 1 {
		if index >= array_length(text_store) {
			global.allow_move = true
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
			txt()
		}
	}
}