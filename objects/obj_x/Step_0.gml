/// @description Insert description here
// You can write your code in this editor

hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)

if (hovering && mouse_check_button_pressed(mb_left)) || gamepad_button_check_pressed(0, gp_face3) game_end()