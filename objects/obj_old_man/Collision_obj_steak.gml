/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

global.lives--

if global.lives <= 0 {
	room_goto(rm_end_win)
	global.hell = true
}


