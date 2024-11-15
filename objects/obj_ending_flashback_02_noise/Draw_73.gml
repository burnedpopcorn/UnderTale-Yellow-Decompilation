draw_set_alpha(draw_alpha);
draw_sprite_tiled(sprite_index, image_index, sprite_xoffset, sprite_yoffset);
draw_set_color(c_black);
draw_set_alpha(draw_alpha * 0.5);
draw_rectangle(-100, -100, 640, 480, false);
draw_set_alpha(1);
