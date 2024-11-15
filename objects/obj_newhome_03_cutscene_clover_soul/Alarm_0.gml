if (live_call())
    return global.live_result;

alarm[0] = absorb_effect_delay;
instance_create_depth(x, y, depth - 1, obj_newhome_03_cutscene_clover_soul_absorb_effect);
absorb_effect_delay = floor(absorb_effect_delay * 0.75);
absorb_effect_count--;
