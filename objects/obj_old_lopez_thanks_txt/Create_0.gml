/// @description https://forum.gamemaker.io/index.php?threads/text-popup-when-opening-a-chest.97093/



msg = 0
alarm_set(0, 30)

seq = layer_sequence_create("textBox", 960, 700, seq_txtbox)
index = 0
wait = false
global.allow_move = false

text_store = [
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
	"Whoops, gotta run and rectify another \nbridge so my yacht can get through.\nSee you later!!!"
]

color = c_grey