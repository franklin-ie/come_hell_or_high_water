/// @description Insert description here
// You can write your code in this editor
if allow_spawn {
	allow_spawn = false
	var _x = random_range(-416, -312)

	var _y = random_range(192, 896)
	var _shadow_y = _y + 256
	
	instance_create_layer(_x, _shadow_y, "Bird", obj_bird_shadow)
	instance_create_layer(_x, _y, "Bird", obj_bird)
	alarm_set(0, bird_spawn_time * 60)
}






