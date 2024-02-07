/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

obj_plr.plr_speed = 2
if !touched {
	audio_play_sound(snd_brush, 5, false)
	touched = true
	alarm_set(0, 120)
}
