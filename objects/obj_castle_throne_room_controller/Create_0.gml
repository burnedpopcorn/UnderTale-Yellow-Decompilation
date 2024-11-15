if (live_call())
    return global.live_result;

if (global.hotland_flag[10] > 0)
{
    instance_create(x, y, obj_castle_throne_room_controller_neutral);
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
darken_target = 0;
darken_current = 0;
