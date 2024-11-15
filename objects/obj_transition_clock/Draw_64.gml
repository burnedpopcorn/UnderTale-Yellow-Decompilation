surface_set_target(surface_room_original);
draw_set_blend_mode(bm_subtract);
draw_sprite_ext(spr_mask_clock_transition, mask_image_index, 0, 0, surface_get_width(application_surface) / 320, surface_get_height(application_surface) / 240, 0, c_white, 1);
draw_set_blend_mode(bm_normal);
surface_reset_target();
draw_surface_ext(surface_room_original, 0, 0, 320 / surface_get_width(application_surface), 240 / surface_get_height(application_surface), 0, c_white, 1);
