/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

if index >= array_length(text_store) {
	global.allow_move = true
	layer_sequence_destroy(seq)
	instance_destroy()
	global.reload_time = .5
	global.has_money = true
	audio_play_sound(snd_acquired, 10, false)
	obj_plr.plr_speed = 5
	global.money += 10000
}

if index + 1 == array_length(text_store)
	color = c_red

scr_create_textbox()