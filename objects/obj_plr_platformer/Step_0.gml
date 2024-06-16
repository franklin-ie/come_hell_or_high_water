/// @description Insert description here
// You can write your code in this editor

touching_floor = place_meeting(x, y + 10, collide_obj)

//show_debug_message(touching_floor)

function walking() {
	var _right = keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr);
	var _left = keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl);
	var _up = keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu);
	var _down = keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd);
	
	var _gamepad_horizontal = gamepad_axis_value(0, gp_axislh)

	var _xinput = _right - _left;
	var _yinput = _up - _down; // swapped
	
	if _gamepad_horizontal != 0 {
		move_and_collide(_gamepad_horizontal * plr_speed, 0, collide_obj)
	}
	
	else {
		move_and_collide
		(
			_xinput * plr_speed,
			0,
			collide_obj
		)
	}
	
	if !touching_floor {
		plr_speed = 6
	}
	
	else {
		plr_speed = 5
	}
	
	if can_jump == 1 && (_yinput > 0 || gamepad_button_check_pressed(0, gp_face1)) {
		jump_speed = -30
		collide_obj = [obj_ash]
		move_and_collide(0, jump_speed, collide_obj)
		can_jump = 0
		alarm_set(2, 1)
	}
	
	if can_jump == 1 && (_yinput < 0 || gamepad_button_check_pressed(0, gp_face3)) {
		phase = true
		collide_obj = [obj_ash]
		alarm_set(2, 1)
		alarm_set(3, 10)
	}
	
	if _xinput > 0 || _gamepad_horizontal > 0 {
		sprite_index = spr_plr_walking_right
	}
	
	if _xinput < 0 || _gamepad_horizontal < 0{
		sprite_index = spr_plr_walking_left
	}
	
	if _xinput == 0 && _yinput == 0 && _gamepad_horizontal == 0 {
		if sprite_index == spr_plr_walking_left || sprite_index == spr_plr_idle_left {
			sprite_index = spr_plr_idle_left
		}
		else sprite_index = spr_plr_idle_right
	}
	
	return _xinput != 0 || _yinput != 0 || _gamepad_horizontal != 0
}

//if lives <= 0 game_restart()

if global.allow_move {
	var _has_walked = false
	var _sound
	
	if !touching_floor && can_jump == 1 {
		can_jump = 0
		alarm_set(2, 1)
	}
	
	
	if walking() {
		_has_walked = true
		if walking_sound {
			_sound = audio_play_sound(snd_walking, 5, false)
			walking_sound = false
			alarm_set(1, 60)
		}
	}
	
	else {
		if _has_walked {
			audio_stop_sound(_sound)
			_has_walked = false
		}
	}
}