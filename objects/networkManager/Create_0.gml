/// @description Insert description here
// You can write your code in this editor

// Initialize WebSocket client
ping = 0;
port = 25569;
host = "localhost";

// Http variables
httpHost = "localhost:25565/api/";
httpProtocol = "http";
listRequests = ds_list_create();

// WebSocket client
if (os_is_network_connected()) {
	socket = network_create_socket(network_socket_ws);
	network_set_config(network_config_use_non_blocking_socket, 1);
} else {
	show_debug_message("The device is not connected to the Internet.");
}


//alarm[0] = 120;

// For networking async event
type_event = undefined;
buffer = pointer_null;
buffer_client = buffer_create(1024, buffer_fixed, 2);