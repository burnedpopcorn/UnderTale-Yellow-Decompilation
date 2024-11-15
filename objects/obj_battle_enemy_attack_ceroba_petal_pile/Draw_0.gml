if (!surface_exists(global.attack_surface))
{
    draw_self();
    exit;
}

surface_set_target(global.attack_surface);
draw_sprite_ext(sprite_index, image_index, x - global.attack_surface_x, y - global.attack_surface_y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
draw_set_color(c_black);
draw_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 480, false);
surface_reset_target();
