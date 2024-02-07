/// @description shoot proj
// You can write your code in this editor

if (room == rm_old_man || room == rm_old_woman) && can_shoot && global.has_weapon {
	var _obj_to_shoot = obj_banana_peel
	if global.mr_lopez _obj_to_shoot = obj_steak
	instance_create_layer(x, y, "objProjectiles", _obj_to_shoot)
	can_shoot = false
	alarm_set(0, global.reload_time * 60) // goes by frames
}