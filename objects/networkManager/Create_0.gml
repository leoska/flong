/// @description Insert description here
// You can write your code in this editor

ping = 0;
port = 25569;
host = "127.0.0.1";

socket = network_create_socket(network_socket_ws);
network_connect(socket, host, port);