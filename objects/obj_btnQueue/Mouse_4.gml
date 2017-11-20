/// @description Join Queue
if(m_Clicked) {
	with(obj_Client) {
		var packet = ds_map_create();
		packet[?"type"] = Packet.LEAVEQUEUE;
		ds_list_add(m_NextPacket, packet);
	}
	m_Clicked = false;
} else {
	with(obj_Client) {
		var packet = ds_map_create();
		packet[?"type"] = Packet.JOINQUEUE;
		ds_list_add(m_NextPacket, packet);
	}
	m_Clicked = true;
}
