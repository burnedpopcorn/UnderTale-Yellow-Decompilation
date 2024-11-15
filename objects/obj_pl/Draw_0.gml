if (live_call())
    return global.live_result;

draw_self();
scr_draw_palette_shader(palette_index);
