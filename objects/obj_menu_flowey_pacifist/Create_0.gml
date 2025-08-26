if (live_call())
    return global.live_result;

var world_value = 0;
p[2] = false;
p[1] = true;
sh = 0.5;
waiter = 0;
choice = 0;
choice_alpha = 0;
instance_create_depth(160, 160, -100, obj_ending_flowey);
obj_ending_flowey.image_xscale = 0.5;
obj_ending_flowey.image_yscale = 0.5;
obj_ending_flowey.sprite_index = spr_flowey_enter;
obj_ending_flowey.image_speed = 0.5;
scene = 0;
cutscene_timer = 0;
