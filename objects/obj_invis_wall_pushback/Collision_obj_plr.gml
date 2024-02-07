/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

instance_create_layer(
	0,
	0,
	"textPopup",
	obj_trololol_txt
)

other.direction = point_direction(x, y, other.x, other.y)

audio_play_sound(snd_bonk, 10, false)

global.collision_run = true

alarm_set(0, 30)