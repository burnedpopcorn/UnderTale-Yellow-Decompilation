if (live_call())
    return global.live_result;

if (instance_exists(obj_guardener_guy_a) && instance_exists(obj_guardener_guy_b))
{
}
else
{
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
shoot_timer = 10;
shoot_timer_max = 50;
shoot_count = 4;
alarm[0] = room_speed * 8;
