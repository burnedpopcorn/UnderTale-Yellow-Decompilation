var x_offset = sprite_get_xoffset(sprite_index);
var y_offset = sprite_get_yoffset(sprite_index);
draw_sprite_part(sprite_index, 0, 0, y_offset + 1, sprite_width, sprite_height, x - x_offset, y);
