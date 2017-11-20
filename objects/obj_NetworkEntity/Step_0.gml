/// @description 
var _dist = point_distance(x, y, m_TargetX, m_TargetY);
if(_dist <= speed) {
	x = m_TargetX;
	y = m_TargetY;
	speed = 0;
} else {
	direction = point_direction(x,  y, m_TargetX, m_TargetY);
	speed = _dist / (room_speed * 1);
}
if(image_angle != m_TargetAngle) {
	var _turn = angle_difference(image_angle, m_TargetAngle);
	if(sign(_turn) > 0) {
		image_angle -= abs(m_TargetAngle - image_angle) / (room_speed * 1);
	} else {
		image_angle += abs(m_TargetAngle - image_angle) / (room_speed * 1);
	}
}
