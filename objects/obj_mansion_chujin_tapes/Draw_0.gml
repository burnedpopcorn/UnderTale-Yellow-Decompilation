if (live_call())
    return global.live_result;

draw_set_alpha(image_alpha);
draw_sprite(sprite_index, image_index, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
draw_set_alpha(1);

if (!scene_change && sprite_index != spr_battle_hp_cover_self)
    draw_sprite_ext(spr_chujin_tapes_static_overlay, overlay_image_index, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, overlay_alpha);
