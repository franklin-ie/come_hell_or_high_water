/// @description Insert description here
// You can write your code in this editor

if global.first_try {
	if room_exists(rm_parkour_lvl_1) {
		room_goto(rm_parkour_lvl_1)
		instance_destroy(obj_plr)
	}
}

else {
	if room_exists(rm_end_hell) {
		room_goto(rm_end_hell)
		instance_destroy(obj_plr)
	}
}