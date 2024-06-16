/// @description Insert description here
// You can write your code in this editor

// RUN EVERY FRAME; ONLY PUT CONSTANTS HERE

function update_text() {
	var text_store = [
		"*You decide to help*",
		"*You open your bag and shoot out a cow*",
		"*Its mass as lim x->-0 = 5x*",
		"*Unfortunately, that seems to make him and\nmany QHSS students all the more sick*",
		"*Thus, you stick with good old 2x = 16\nthe solution of which is x = 8*",
		"*At that sudden revelation, you realize the\n8th element on the periodic table is\nO, oxygen.*",
		"*You take out your oxygen tank, and the\nold man turns from pale to his normal\nskin tone*",
		"*You apply the power of AP Bio to the old\nman, and he wakes.*",
		
		// Old Man
		"Woah! Where am I?",
		"...",
		"Is that... could that be...?\nMy son X Æ A-12???",
		"...",
		"Thanks for saving me, my child!!!",
		"(what the...)",
		"I'm the one, the only, Jeff Bezos, who pays\nhis employees a very fair salary.",
		"Can you believe it? I pay them at an\nexponential rate of\nf(t)=1000000^t dollars, where t = seconds!",
		"...",
		"Ok, it's only for the non-warehouse workers.\nThose deserve to pee in nonconventional\ncontainers, amirite???",
		"...",
		"To demonstrate my generosity, here's 10,000\ndollars!",
		"*You receive $10,000!!!\nThat's 0.015625 of a yacht!*",
		"*(Beep, Beep)*",
		"Whoops, gotta run and destroy another \nbridge so my yacht can get through.\nSee you later!!!"
	]
	if msg == 1 {
		if index >= array_length(text_store) {
			global.allow_move = true
			layer_sequence_destroy(seq)			
			instance_destroy()
			global.money += 9900
			instance_destroy(obj_old_man_passive)
			return
		}
		draw_set_valign(fa_middle)
		draw_set_font(global.font)
		
		_color = c_grey
		
		if index == 6 {
			instance_destroy(obj_ded_old_man)
			_color = c_black
		}
		
		draw_text_color(380, 940, text_store[index], _color, _color, _color, _color, 1)
		if keyboard_check_pressed(vk_space) && !wait {
			wait = true
			index++
			alarm_set(1, 5)
			update_text()
		}
	}
}

update_text()