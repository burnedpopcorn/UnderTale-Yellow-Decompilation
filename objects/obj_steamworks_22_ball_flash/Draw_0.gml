draw_set_color(c_white);
draw_set_alpha(draw_alpha);
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 320, 240, false);

with (obj_axis_npc)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_black, other.draw_alpha);

draw_set_alpha(1);
