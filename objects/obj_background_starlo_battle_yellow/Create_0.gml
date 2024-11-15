if (live_call())
    return global.live_result;

ufreq = shader_get_uniform(starlo_bg_test, "freq");
utime = shader_get_uniform(starlo_bg_test, "time");
uamp = shader_get_uniform(starlo_bg_test, "amp");
opacity = 0;
fade_in = 1;
