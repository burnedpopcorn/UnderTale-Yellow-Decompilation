var blast_collider;

if (live_call())
    return global.live_result;

blast_collider = instance_create_depth(x, y, depth, obj_heart_yellow_shot_blast_collider);
alarm[1] = damage_tick_timer;
