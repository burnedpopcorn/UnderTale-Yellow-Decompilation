if (live_call())
    return global.live_result;

draw_set_alpha(draw_alpha_flowey);
draw_set_color(c_black);
draw_rectangle(899, 166, 922, 192, false);
draw_set_alpha(1);
draw_set_alpha(flowey_bg_alpha);
draw_sprite_tiled(spr_flowey_world_background, 0, -flowey_bg_offset, -flowey_bg_offset);
draw_set_alpha(1);
