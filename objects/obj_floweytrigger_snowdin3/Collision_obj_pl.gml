if (!instance_exists(obj_flowey_snowdin3))
{
    instance_destroy();
    scr_cutscene_start();
    instance_create(260, 320, obj_flowey_snowdin3);
    global.flowey_save_number = 0;
}
