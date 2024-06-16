/// @description Insert description here
// You can write your code in this editor

hitpoints--
if hitpoints == 1 speed = 5
if hitpoints <= 0 {
	instance_destroy()
	audio_play_sound(snd_car_crash, 10, false)
}