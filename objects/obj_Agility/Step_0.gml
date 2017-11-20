/// @description Send
if(!instance_exists(m_Ship)) exit;
if(round(m_Ship.m_AgilityCounter) >= 100 && m_Ready) {
	with(obj_AngleAdjust) instance_destroy();
	with(obj_TurnLeft) instance_destroy();
	with(obj_TurnRight) instance_destroy();
	var packet = ds_map_create();
	packet[?"type"] = Packet.INPUTANGLE;
	packet[?"angle"] = m_NewValue;
	with(obj_Client) {
		ds_list_add(m_NextPacket, packet);
	}
	m_NewValue = -1;
	m_Ship.m_AgilityCounter = 0;
	m_Ready = false;
}
