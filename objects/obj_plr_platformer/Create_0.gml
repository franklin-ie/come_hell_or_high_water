/// @description Insert description here
// You can write your code in this editor

plr_speed = 5
jump_speed = 0

chicken_leg_objects = [
	obj_chicken_leg_left,
	obj_chicken_leg_right,
	obj_chicken_leg_extension,
]

collide_obj = [
	obj_ash,
	obj_chicken_leg_left,
	obj_chicken_leg_right,
	obj_chicken_leg_extension,
]


phase = false
can_jump = 1
can_shoot = true
touching_floor = true

global.reload_time = .5 // seconds

face_dir = direction

lives = 3

walking_sound = true

global.money = 0
global.has_money = false
global.has_weapon = true
global.collision_run = false
global.win = false
global.hell = false
global.woman_activate = false
global.win_woman = false
global.spawn_random = false
global.allow_move = true
global.advance = false
