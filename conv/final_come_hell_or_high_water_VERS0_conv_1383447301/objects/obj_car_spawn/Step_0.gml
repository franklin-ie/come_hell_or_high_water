/// @description Insert description here
// You can write your code in this editor
if allow_spawn {
	allow_spawn = false
	var _obj_c = obj_car
	
	var _car_x = random_range(192, 1536)

	var _car_y
	var _rand = random_range(0, 1)

	if round(_rand) == 0 {
		_car_y = random_range(-416, -352)
	}
	else {
		_car_y = random_range(1024, 1152)
		_obj_c = obj_car_inverted
	}
	
	instance_create_layer(_car_x, _car_y, "objProjectiles", _obj_c)
	alarm_set(0, global.spawn_time_sec * 60)
}






