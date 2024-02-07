/// @description Insert description here
// You can write your code in this editor

speed = 10
direction = 270

start_chk = false
alarm_set(0, 30)

if y > 0 direction = 90

if global.spawn_random && global.mr_lopez && global.allow_move {
	speed = 12
	var _nearest_wall = instance_nearest(x, y, obj_wall)
	var _random = random_range(-15, 15)
	direction = point_direction(_nearest_wall.x, _nearest_wall.y, x, y) + _random
}

hitpoints = 2

