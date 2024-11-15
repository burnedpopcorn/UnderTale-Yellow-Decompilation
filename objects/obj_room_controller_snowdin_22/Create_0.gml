scene = -1;
timer = -1;

if (global.snowdin_flag[14] >= 5)
{
    instance_destroy();
    instance_destroy(obj_flowey_snowdin_22);
    instance_destroy(obj_martlet_snowdin_22);
    exit;
}

if (global.snowdin_flag[14] > 1)
{
    obj_martlet_snowdin_22.x = 440;
    instance_destroy(obj_event_collider);
    scene = 10;
}
