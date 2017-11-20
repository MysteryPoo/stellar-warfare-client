/// @description Connection to server

m_Login = ds_map_create();
m_Phase = 0;
m_NextPacket = ds_list_create();
m_Socket = sock_open("http://mattandheidiswedding.party:1337/login");

m_Status = "";
m_LoggedIn = false;

m_netID = -1;
m_nextEntID = 0;

enum Packet {
	LOGIN = 0x01,
	KEEPALIVE = 0x02,
	STARTMATCH = 0x03,
	UPDATETIME = 0x04,
	ENDMATCH = 0x05,
	JOINQUEUE = 0x06,
	LEAVEQUEUE = 0x07,
	NEWOBJECT = 0x08,
	UPDATESTATE = 0x09,
	INPUTANGLE = 0x0A,
	INPUTTHROTTLE = 0x0B,
	INPUTSCAN = 0x0C
};

alarm[0] = room_speed;