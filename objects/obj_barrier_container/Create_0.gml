if (live_call())
    return global.live_result;

open_sprite = spr_container_open;
submerge_sprite = spr_container_submerge;
soul_color = c_white;

if (!instance_exists(obj_barrier_container_surface))
    instance_create_depth(0, 0, -9999, obj_barrier_container_surface);

scene = 0;
cutscene_timer = 0;
self_soul = -4;
image_speed = 0;
soul_target_x = 180;
soul_target_y = 140;
