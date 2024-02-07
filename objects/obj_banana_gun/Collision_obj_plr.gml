/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

global.has_weapon = true

instance_create_layer(
	0,
	0,
	"textPopup",
	obj_banana_txt
)

audio_play_sound(snd_acquired, 10, false)

instance_destroy()

instance_destroy()
