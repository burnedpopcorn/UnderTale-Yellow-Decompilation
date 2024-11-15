if (live_call())
    return global.live_result;

shader_set(sh_flash);
draw_self();
shader_reset();
