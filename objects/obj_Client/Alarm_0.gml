/// @description Keep alive
alarm[0] = room_speed;
var packet = ds_map_create();
packet[?"type"] = Packet.KEEPALIVE;
ds_list_add(obj_Client.m_NextPacket, packet);
