/// @description Click
var _x = device_mouse_x_to_gui(0);
var _y = device_mouse_y_to_gui(0);
if(_x > bbox_left && _x < bbox_right) {
	if(_y > bbox_top && _y < bbox_bottom) {
		obj_Agility.m_NewValue -= 15;
	}
}
