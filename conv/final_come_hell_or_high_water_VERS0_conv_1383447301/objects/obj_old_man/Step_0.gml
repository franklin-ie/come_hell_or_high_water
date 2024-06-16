/// @description Insert description here
// You can write your code in this editor

target_distance = distance_to_object(obj_plr)

function run() {
	direction = point_direction(obj_plr.x, obj_plr.y, x, y)
	move_and_collide(
		dcos(direction) * run_speed, 
		-dsin(direction) * run_speed,
		[obj_wall, obj_invis_wall])
}

if (can_shoot) {
	instance_create_layer(x, y, "objProjectiles", obj_flying_money)
	can_shoot = false
	alarm_set(0, global.old_man_reload_time * 60)
}

if start_running {
	run_speed = 1.5
	run()
}

else if target_distance < avoid_dist {
	run_speed = 3
	run()
}