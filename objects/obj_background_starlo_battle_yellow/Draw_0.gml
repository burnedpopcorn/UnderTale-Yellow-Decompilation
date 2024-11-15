if (live_call())
    return global.live_result;

shader_set(starlo_bg_test);
shader_set_uniform_f(ufreq, 300);
shader_set_uniform_f(utime, current_time / 250);
shader_set_uniform_f(uamp, 0.0015);
draw_sprite_ext(spr_starlo_bg, 0, x, y, 1, 1, 0, c_white, opacity);
shader_reset();
