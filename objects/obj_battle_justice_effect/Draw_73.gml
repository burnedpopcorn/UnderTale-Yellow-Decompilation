if (live_call())
    return global.live_result;

gpu_set_blendmode(bm_add);
draw_set_alpha(draw_alpha);
draw_ellipse_color(0 - overlay_offset, 0 - overlay_offset, 640 + overlay_offset, 480 + overlay_offset, c_black, c_yellow, 0);
draw_set_alpha(1);
gpu_set_blendmode(bm_normal);
