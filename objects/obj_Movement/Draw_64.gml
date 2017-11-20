/// @description 
if(instance_exists(m_Ship)) {
	draw_self();
	var percent = m_Ship.m_MovementCounter / 100;
	draw_sprite_ext(sprite_index, image_index, x, y, percent, percent, image_angle, c_red, 0.5);
}
