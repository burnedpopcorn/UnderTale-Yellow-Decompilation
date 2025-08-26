var camera_height = camera_get_view_height(view_camera[0]);
var camera_width = camera_get_view_width(view_camera[0]);
var x_target = clamp(view_object_original.x - (camera_width div 2), 0, room_width - camera_width);
var y_target = clamp(view_object_original.y - (camera_height div 2), 0, room_height - camera_height);
camera_set_view_target(view_camera[0], -4);
camera_set_view_pos(view_camera[0], x_target + irandom_range(-intensity, intensity), y_target + irandom_range(-intensity, intensity));
