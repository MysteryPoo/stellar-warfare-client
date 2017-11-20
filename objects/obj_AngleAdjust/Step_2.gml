/// @description 
if(instance_exists(m_Ship)) {
	var _angle = obj_Agility.m_NewValue;
	x = m_Ship.x + 100 * dcos(_angle);
	y = m_Ship.y - 100 * dsin(_angle);
}
