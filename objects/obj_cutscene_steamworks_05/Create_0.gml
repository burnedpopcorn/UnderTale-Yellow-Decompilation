if (global.sworks_flag[7] > 0 || global.route != 2)
{
    instance_create(200, 160, obj_determination);
    instance_destroy();
    exit;
}

cutscene_timer = 0;
scene = 0;
