/// @description Insert description here
// You can write your code in this editor

if !touching_floor {
	jump_speed++
	
	if !phase && jump_speed > 0 && !place_meeting(x, y - 4, chicken_leg_objects) &&
									place_meeting(x, y + 32, chicken_leg_objects) {
		collide_obj = [
			obj_ash,
			obj_chicken_leg_left,
			obj_chicken_leg_right,
			obj_chicken_leg_extension
		]
	}
	
	move_and_collide(0, jump_speed, collide_obj)
	alarm_set(2, 1)
}

if touching_floor && can_jump == 0 {
	can_jump = 1
	
	if jump_speed > 0 jump_speed = 0
}




