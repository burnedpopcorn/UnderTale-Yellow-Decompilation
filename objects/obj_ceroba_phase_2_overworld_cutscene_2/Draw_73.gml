if (draw_overlay_alpha > 0)
{
    draw_set_alpha(draw_overlay_alpha);
    draw_set_color(c_white);
    draw_rectangle(camera_get_view_x(view_camera[0]), 0, 640, room_height, false);
    shader_set(sh_silhouette);
    
    with (obj_ceroba_npc)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha * other.draw_overlay_alpha);
    
    shader_reset();
    draw_set_alpha(1);
    
    with (obj_flashback_kanako_soul)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha * other.draw_overlay_alpha);
}

draw_set_alpha(draw_alpha);
draw_set_color(c_white);
draw_rectangle(camera_get_view_x(view_camera[0]), 0, 640, room_height, false);
draw_set_alpha(1);
draw_set_alpha(draw_alpha_black);
draw_set_color(c_black);
draw_rectangle(camera_get_view_x(view_camera[0]), 0, 640, room_height, false);

with (obj_flashback_kanako_soul)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha * other.draw_alpha_black);

draw_set_alpha(1);
