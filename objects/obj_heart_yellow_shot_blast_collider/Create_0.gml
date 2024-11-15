if (live_call())
    return global.live_result;

alarm[0] = 1;
can_grow = false;
image_xscale = 640;

if (instance_exists(obj_heart_yellow_shot_blast))
    image_angle = obj_heart_yellow_shot_blast.image_angle;
