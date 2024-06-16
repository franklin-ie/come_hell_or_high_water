/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// https://www.youtube.com/watch?v=0S8WsAJvTjE
// this guy is very cool he included all the code in the first frame :DDD

var _vidData = video_draw()
var _vidStatus = _vidData[0]
if _vidStatus == 0 {
	draw_surface(_vidData[1], 50, 50)
}
else {
	game_end()
}



