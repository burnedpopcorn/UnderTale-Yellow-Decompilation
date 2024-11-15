var soul;

if (live_call())
    return global.live_result;

soul = instance_create_depth(x, y, depth + 1, obj_flowey_1_attack_8_soul);
soul.direction = (image_angle + 90) - 180;
fade_out = true;
