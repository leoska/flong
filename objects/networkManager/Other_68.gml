/// @description Insert description here
// You can write your code in this editor

type_event = ds_map_find_value(async_load, "type");

switch(type_event) {
	case network_type_data:
		buffer = ds_map_find_value(async_load, "buffer");
		buffer_seek(buffer, buffer_seek_start, 0);
		var msg = buffer_read(buffer, buffer_string);
		show_message_async(msg);
		
		var map = ds_map_create();
		ds_map_add(map, "event", "message");
		ds_map_add(map, "body", "yes");
		buffer_seek(buffer_client, buffer_seek_start, 0);
		buffer_write(buffer_client, buffer_text, json_encode(map));
		network_send_raw(socket, buffer_client, buffer_tell(buffer_client));
		ds_map_destroy(map);
	break;
}