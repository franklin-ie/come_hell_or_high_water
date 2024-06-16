if global.mr_lopez {
	instance_destroy(obj_banana_gun)
	instance_create_layer(
		1600,
		320,
		"invisWall",
		obj_steak_stationary
	)
	if global.money > 10000 instance_destroy(obj_old_man_passive)
}

if global.hell && global.money != 0 {
	instance_destroy(obj_warp)
	instance_destroy(obj_old_man_passive)
	instance_destroy(obj_warning_man_trigger)
	instance_create_layer(
					960,
					428,
					"oldMan",
					obj_ded_old_man
				)
				
}

else if global.money > 0 && !global.hell {
	instance_destroy(obj_warp)
	instance_destroy(obj_warning_man_trigger)
}

audio_stop_all()
audio_play_sound(bgm_airship_serenity, 1, true)

if global.difficulty {
	obj_plr.x = 940
	obj_plr.y = 1000
	global.difficulty = false
	obj_plr.speed = 0
}

if !global.first_try && !global.hell {
	obj_plr.x = 940
	obj_plr.y = 1000
	global.lives = 3
	global.old_woman_speed = 2
	global.has_weapon = false
	global.money = 0
	instance_destroy(obj_plr_platformer)
	obj_plr.speed = 0
}