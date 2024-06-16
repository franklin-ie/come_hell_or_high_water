/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if !global.advance {
	x = 0
	y = 960
}

else {
	if (room == rm_parkour_lvl_2_mr_lopez || room == rm_parkour_lvl_2) {
		room_goto(rm_popeyes)
		global.first_try = false
		instance_destroy()
	}
	else if global.mr_lopez {
		room_goto(rm_parkour_lvl_2_mr_lopez)
	}
	else {
		room_goto(rm_parkour_lvl_2)
	}
	speed = 0
	direction = 0
}