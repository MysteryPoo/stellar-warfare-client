/// @description Click
if(round(m_Ship.m_ScannerCounter) < 100) exit;
var _x = device_mouse_x_to_gui(0);
var _y = device_mouse_y_to_gui(0);
if(_x < bbox_right && _x > bbox_left) {
	if(_y > bbox_top && _y < bbox_bottom) {
		with(obj_Ship) {
			if(id != other.m_Ship) {
				var _tracker = instance_create_layer(x, y, "Instances", obj_Tracker);
				_tracker.m_ShipHost = other.m_Ship;
				_tracker.m_ShipTrack = id;
			}
		}
		var packet = ds_map_create();
		packet[?"type"] = Packet.INPUTSCAN;
		with(obj_Client) ds_list_add(m_NextPacket, packet);
		m_Ship.m_ScannerCounter = 0;
	}
}
