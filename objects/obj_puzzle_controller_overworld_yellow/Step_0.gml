if (global.snowdin_flag[2] == 2)
    exit;

if (camera_end == true)
{
    if (scr_camera_move(obj_pl.x, obj_pl.y, 2) == true)
        active = 2;
}

if (active == 2)
{
    active = false;
    camera_end = false;
    global.cutscene = false;
    obj_pl.alarm[0] = 5;
    __view_set(e__VW.Object, 0, obj_pl);
    obj_snowdin06_lever_overworld_yellow.waiter = 0;
    
    if (global.snowdin_flag[2] < 2)
        instance_create(230, 110, obj_molten_rock_overworld_yellow);
}
