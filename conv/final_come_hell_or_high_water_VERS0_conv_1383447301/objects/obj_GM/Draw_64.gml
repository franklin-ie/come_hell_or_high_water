/// @description Insert description here
// You can write your code in this editor

var _width = sprite_get_width(spr_heart) + 20
var _draw_width = _width

for(var _ = lives; _ > 0; _--) {
	draw_sprite(spr_heart, 0, 20 + _draw_width, 10);
	_draw_width += _width
}

var _boss_width = sprite_get_width(spr_boss_heart) + 20
var _boss_draw_width = _boss_width

for(var _ = global.lives; _ > 0; _--) {
	draw_sprite(spr_boss_heart, 0, window_get_width() - _boss_draw_width, 10);
	_boss_draw_width += _boss_width
}