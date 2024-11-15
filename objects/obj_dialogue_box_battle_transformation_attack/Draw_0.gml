draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
draw_rectangle_colour(bbox_left, bbox_top, bbox_left + 4, bbox_bottom, c_white, c_white, c_white, c_white, false);
draw_rectangle_colour(bbox_right - 4, bbox_top, bbox_right, bbox_bottom, c_white, c_white, c_white, c_white, false);
draw_rectangle_colour(bbox_left, bbox_top, bbox_right, bbox_top + 4, c_white, c_white, c_white, c_white, false);
draw_rectangle_colour(bbox_left, bbox_bottom - 4, bbox_right, bbox_bottom, c_white, c_white, c_white, c_white, false);
