/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

if index == array_length(text_store) - 1 {
	if !global.has_weapon text_store[2] = "You don't even have a weapon,\nand you dare face me?"
}

if index + 1 == array_length(text_store)
	color = c_red

scr_create_textbox()