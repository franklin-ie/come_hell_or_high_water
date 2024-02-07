/// @description Insert description here
// You can write your code in this editor

direction = point_direction(other.x, other.y, x, y)

if x + 70 >= window_get_x {
	if y + 70 >= window_get_y || y - 70 <= window_get_y {
		direction += random_range(45, 90)
	}
}

if x - 70 <= window_get_x {
	if y + 70 >= window_get_y || y - 70 <= window_get_y {
		direction -= random_range(45, 90)
	}
}

speed = 5