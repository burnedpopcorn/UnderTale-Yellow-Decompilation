if (live_call())
    return global.live_result;

if (global.route != 3)
{
    instance_destroy();
    instance_create(x, y, obj_barrier_cutscene_neutral);
    exit;
}

scene = 0;
cutscene_timer = 0;
soul_array = [-4, -4, -4, -4, -4];
draw_alpha = 0;
