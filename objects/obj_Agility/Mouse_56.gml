/// @description
var _x = device_mouse_x_to_gui(0);
var _y = device_mouse_y_to_gui(0);
if(_x < bbox_right && _x > bbox_left) {
	if(_y > bbox_top && _y < bbox_bottom) {
		if(m_NewValue == -1 || m_Ready) {
			m_NewValue = m_Ship.image_angle;
			with(obj_AngleAdjust) instance_destroy();
			var _angle = instance_create_layer(0, 0, "Instances", obj_AngleAdjust);
			_angle.m_Ship = m_Ship;
			with(obj_TurnLeft) instance_destroy();
			with(obj_TurnRight) instance_destroy();
			instance_create_layer(x - 45, y + 48, "Instances", obj_TurnLeft);
			instance_create_layer(x + 45, y + 48, "Instances", obj_TurnRight);
			m_Ready = false;
		} else {
			with(obj_AngleAdjust) instance_destroy();
			with(obj_TurnLeft) instance_destroy();
			with(obj_TurnRight) instance_destroy();
			m_Ready = true;
		}
	}
}
