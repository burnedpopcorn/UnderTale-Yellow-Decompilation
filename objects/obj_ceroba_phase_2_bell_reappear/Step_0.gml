if (live_call())
    return global.live_result;

if (instance_exists(obj_ceroba_phase_2_shield_reappear))
    image_alpha = obj_ceroba_phase_2_shield_reappear.image_alpha;
else
    instance_destroy();

if (overlay_alpha > 0)
    overlay_alpha--;
