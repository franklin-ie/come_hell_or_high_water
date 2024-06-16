/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

instance_create_layer(
	0,
	0,
	"textPopup",
	obj_hell_txt
)

other.direction = point_direction(x, y, other.x, other.y)

global.collision_run = true

alarm_set(0, 30)