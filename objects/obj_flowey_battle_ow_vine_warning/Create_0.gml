if (live_call())
    return global.live_result;

if (position_meeting(x, y, obj_wall))
    instance_destroy();

image_alpha = 0;
play_sound = false;
