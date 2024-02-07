/// @description Insert description here
// You can write your code in this editor

function walking() {
	var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	var _left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	var _up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	var _down = keyboard_check(vk_down) || keyboard_check(ord("S"));

	var _xinput = _right - _left;
	var _yinput = _down - _up;
	
	var _xdir = 0
	var _ydir = 0
	
	if _xinput == 0 && _yinput == 0 {
		direction = direction
	}
	
	else {
		switch(_xinput) {
			case 1: _xdir = 0; break
			case -1: _xdir = 180; break
		}
	
		if _xinput == 0 {
			switch(_yinput) {
				case 1: _ydir = 270; break
				case -1: _ydir = 90; break
			}
		}
	
		else {
			switch(_yinput) {
				case 1: {
					if _xinput == 1 {
						_ydir = -45
					}
					else {
						_ydir = 45
					}
					break
				}
				case -1: {
					if _xinput == 1 {
						_ydir = 45
					}
					else {
						_ydir = -45
					}
					break
				}
			}
		}
	
		direction = _xdir + _ydir
	}

	move_and_collide(_xinput * plr_speed, _yinput * plr_speed, [obj_wall, obj_invis_wall])
	return _xinput != 0 || _yinput != 0
}

//if lives <= 0 game_restart()

if global.allow_move {
	var _has_walked = false
	var _sound
	if walking() {
		_has_walked = true
		if walking_sound {
			_sound = audio_play_sound(snd_walking, 5, false)
			walking_sound = false
			alarm_set(1, 60)
		}
		if direction >= 270 {
			sprite_index = spr_plr_walking_front
		} else if direction >= 180 {
			sprite_index = spr_plr_walking_left
		} else if direction >= 90 {
			sprite_index = spr_plr_walking_back
		} else {
			sprite_index = spr_plr_walking_right
		}
	}
	else {
		if _has_walked audio_stop_sound(_sound)
		if direction >= 270 {
			sprite_index = spr_plr_idle_front
		} else if direction >= 180 {
			sprite_index = spr_plr_idle_left
		} else if direction >= 90 {
			sprite_index = spr_plr_idle_back
		} else {
			sprite_index = spr_plr_idle_right
		}
	}
}

if global.collision_run {
	move_and_collide(
		dcos(direction) * 1, 
		-dsin(direction) * 1,
		obj_wall
	)
}

if room == rm_popeyes && global.win {
	instance_create_layer(
		0,
		0,
		"textPopup",
		obj_winning_txt
	)
	instance_destroy(obj_start_txt)
	instance_destroy(obj_warning_man_trigger)
	instance_destroy(obj_warp)
	instance_destroy(obj_banana_gun)
	
	global.win = false
}
else if room == rm_popeyes && global.woman_activate {
	instance_create_layer(
		0,
		0,
		"textPopup",
		obj_winning_woman_txt
	)
	instance_destroy(obj_start_txt)
	instance_destroy(obj_warning_woman_trigger)
	instance_destroy(obj_banana_gun)
	
	global.woman_activate = false
	global.win_woman = true
}