/// @description Construct super packet and send
switch(sock_status(m_Socket)) {
	case SOCK_STATUS_CONNECTING:
		m_Status = "Please wait..."
		break;
	case SOCK_STATUS_OPEN:
		m_Status = "Connected";
		if(!m_LoggedIn) {
			ini_open(working_directory + "login.ini");
			var _account = ini_read_string("login", "account", "0");
			var _email = ini_read_string("login", "email", "0");
			var _token = ini_read_real("login", "token", 0);
			var _name = ini_read_string("login", "name", "0");
			var _lastAccessed = ini_read_string("login", "lastAccessed", "0");
			show_debug_message("Account: " + _account);
			ini_close();
			var packet = ds_map_create();
			packet[?"type"] = Packet.LOGIN;
			packet[?"account"] = _account;
			ds_list_add(m_NextPacket, packet);
		}
		break;
	case SOCK_STATUS_CLOSED:
		m_Status = "Connection to server has been lost...";
		visible = true;
		break;
}
var numPackets = ds_list_size(m_NextPacket);
if(numPackets > 0) {
	var numSending = min(5, numPackets);
	repeat(numSending) {
		var packet = m_NextPacket[|0];
		var buffer = json_encode(packet);
		sock_send(m_Socket, buffer);
		ds_map_destroy(packet);
		ds_list_delete(m_NextPacket, 0);
	}
}
while(sock_hasmessages(m_Socket)) {
	var message = sock_recieve(m_Socket);
	var packet = json_decode(message);
	switch(packet[?"type"]) {
		case Packet.LOGIN:
			if(m_LoggedIn) exit;
			var _account = packet[?"account"];
			var _lastAccessed = packet[?"lastAccessed"];
			ini_open(working_directory + "login.ini");
			ini_write_string("login", "account", _account);
			ini_write_string("login", "lastAccessed", _lastAccessed);
			ini_close();
			m_LoggedIn = true;
			break;
		case Packet.KEEPALIVE:
			var _netID = packet[?"netID"];
			m_netID = _netID;
			with(obj_NetworkEntity) {
				if(m_netID == -1) m_netID = _netID;
				if(m_netID == _netID) {
					obj_Camera.m_Tracked = id;
					with(obj_ShipControl) m_Ship = other.id;
				}
			}
			break;
		case Packet.STARTMATCH:
			m_nextEntID = 0;
			room_goto(rm_Match);
			break;
		case Packet.ENDMATCH:
			m_netID = -1;
			room_goto(rm_Menu);
			break;
		case Packet.NEWOBJECT:
			var ships = packet[?"ships"];
			var shipNum = ds_list_size(ships);
			for(var i = 0; i < shipNum; ++i) {
				var ship = ships[|i];
				var _ship = instance_create_layer(ship[?"x"], ship[?"y"], "Instances", obj_Ship);
				_ship.m_netID = ship[?"netID"];
				_ship.m_TargetX = ship[?"x"];
				_ship.m_TargetY = ship[?"y"];
				_ship.image_angle = ship[?"angle"];
				_ship.direction = ship[?"angle"];
				_ship.m_MovementTier = ship[?"movementTier"];
				_ship.m_MovementCounter = ship[?"movementCounter"];
				_ship.m_Throttle = ship[?"throttle"];
				_ship.m_AgilityTier = ship[?"agilityTier"];
				_ship.m_AgilityCounter = ship[?"agilityCounter"];
				_ship.m_ArmorTier = ship[?"armorTier"];
				_ship.m_ArmorCounter = ship[?"armorCounter"];
				_ship.m_ShieldTier = ship[?"shieldTier"];
				_ship.m_ShieldCounter = ship[?"shieldCounter"];
				_ship.m_ScannerTier = ship[?"scannerTier"];
				_ship.m_ScannerCounter = ship[?"scannerCounter"];
				_ship.m_TurretTier = ship[?"turretTier"];
				_ship.m_TurretCounter = ship[?"turretCounter"];
			}
			show_debug_message(message);
			break;
		case Packet.UPDATESTATE:
			var ships = packet[?"ships"];
			var shipNum = ds_list_size(ships);
			for(var i = 0; i < shipNum; ++i) {
				var ship = ships[|i];
				var _ship;
				with(obj_NetworkEntity) {
					if(ship[?"netID"] == m_netID) _ship = id;
				}
				_ship.m_netID = ship[?"netID"];
				_ship.m_TargetX = ship[?"x"];
				_ship.m_TargetY = ship[?"y"];
				_ship.m_TargetAngle = ship[?"angle"];
				_ship.direction = ship[?"angle"];
				_ship.m_MovementTier = ship[?"movementTier"];
				_ship.m_MovementCounter = ship[?"movementCounter"];
				_ship.m_Throttle = ship[?"throttle"];
				_ship.m_AgilityTier = ship[?"agilityTier"];
				_ship.m_AgilityCounter = ship[?"agilityCounter"];
				_ship.m_ArmorTier = ship[?"armorTier"];
				_ship.m_ArmorCounter = ship[?"armorCounter"];
				_ship.m_ShieldTier = ship[?"shieldTier"];
				_ship.m_ShieldCounter = ship[?"shieldCounter"];
				_ship.m_ScannerTier = ship[?"scannerTier"];
				_ship.m_ScannerCounter = ship[?"scannerCounter"];
				_ship.m_TurretTier = ship[?"turretTier"];
				_ship.m_TurretCounter = ship[?"turretCounter"];
			}
			break;
		case Packet.UPDATETIME:
			/*with(obj_Clock) {
				m_Minutes = floor(packet[?"time"] / 60);
				m_Seconds = packet[?"time"] mod 60;
			}*/
			break;
	}
	ds_map_destroy(packet);
}
