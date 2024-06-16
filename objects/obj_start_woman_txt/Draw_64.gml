/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE
if index % 2 == 0
	color = c_maroon
else
	color = c_black

if index == array_length(text_store) - 1 {
	color = c_red
}

scr_create_textbox()