var x_offset = sprite_get_xoffset(sprite_index);
var y_offset = sprite_get_yoffset(sprite_index);
draw_sprite_part(sprite_index, 0, 0, 0, sprite_width, y_offset, obj_pulley_elevator.x - x_offset, obj_pulley_elevator.y - y_offset);
