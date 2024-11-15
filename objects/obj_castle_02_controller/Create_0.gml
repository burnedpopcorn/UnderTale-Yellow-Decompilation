if (live_call())
    return global.live_result;

fg_layer_id = layer_get_id("foreground_pillars");
depth = obj_pl.depth;
obj_pl.image_alpha = 0;
