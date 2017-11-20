/// @description Destruction
ds_map_destroy(m_Login);
sock_close(m_Socket);
ds_list_destroy(m_NextPacket);
