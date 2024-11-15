if (live_call())
    return global.live_result;

if (instance_exists(obj_ceroba_transform_slowdown))
    image_alpha = 1 - obj_ceroba_transform_slowdown.starlo_take_aim_overlay_alpha;
else
    image_alpha = 1;
