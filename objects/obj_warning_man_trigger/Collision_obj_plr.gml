/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

instance_create_layer(
	0,
	0,
	"textPopup",
	obj_warning_man_txt
)

audio_play_sound(snd_ding, 5, false)

instance_destroy()