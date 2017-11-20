/// @description
if(instance_exists(m_Ship)) {
	draw_self();
	var percent = m_Ship.m_ScannerCounter / 100;
	draw_sprite_ext(sprite_index, image_index, x, y, percent, percent, image_angle, c_green, 0.5);
}
