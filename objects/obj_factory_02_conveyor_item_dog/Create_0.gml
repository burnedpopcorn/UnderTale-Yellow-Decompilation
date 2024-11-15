if (live_call())
    return global.live_result;

cutscene_timer = 0;
destroy_self = false;
hsp_base = 1.5;
hspeed = -hsp_base;
hspeed_old = 0;
vspeed_old = 0;
item_wrap = false;
item_wrap_correct = false;
item_throw_noloop = false;
scene = 0;
vspeed_max = 6;
image_speed = 1;
