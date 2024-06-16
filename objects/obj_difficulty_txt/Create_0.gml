/// @description https://forum.gamemaker.io/index.php?threads/text-popup-when-opening-a-chest.97093/



msg = 0
alarm_set(0, 30)

seq = layer_sequence_create("textBox", 960, 700, seq_txtbox)
index = 0
wait = false
global.allow_move = false
global.mr_lopez = false

global.font = font_add("fnt_monocraft.otf", 32, false, false, 32, 128)
global.old_woman_speed = 0.5
global.old_man_reload_time = 1.5 // secs
global.difficulty = true
global.spawn_time_sec = 1.5
global.car_speed = 10