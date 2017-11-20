/// @description 
if(instance_exists(m_ShipHost) && instance_exists(m_ShipTrack)) {
	var _dir = point_direction(m_ShipHost.x, m_ShipHost.y, m_ShipTrack.x, m_ShipTrack.y);
	x = m_ShipHost.x + 300 * dcos(_dir);
	y = m_ShipHost.y - 300 * dsin(_dir);
}
