/// @description Insert description here
// You can write your code in this editor

if gamepad_is_connected(0) != 0 {
	var _horizontal = gamepad_axis_value(0, gp_axisrh)
	var _vertical = gamepad_axis_value(0, gp_axisrv)
	var _speed = 12
	
	move_and_collide(_horizontal * _speed, _vertical * _speed, obj_cursor_invis_wall)
}

else {
	x = mouse_x - 23
	y = mouse_y - 23	
}


/*
if mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_face1) {
	if can_shoot && global.has_weapon {
		var _obj_to_shoot = obj_banana_peel
		if global.mr_lopez _obj_to_shoot = obj_steak
		instance_create_layer(obj_plr.x, obj_plr.y, "objProjectiles", _obj_to_shoot)
		can_shoot = false
		alarm_set(0, global.reload_time * 60) // goes by frames
	}
}
*/