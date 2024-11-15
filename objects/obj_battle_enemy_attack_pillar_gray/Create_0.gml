if (live_call())
    return global.live_result;

image_alpha = 0;
image_speed = 0;

if (x < 320)
    sprite_index = spr_ceroba_pillar_left;
else
    sprite_index = spr_ceroba_pillar_right;

image_blend = c_gray;
alarm[0] = 5;
