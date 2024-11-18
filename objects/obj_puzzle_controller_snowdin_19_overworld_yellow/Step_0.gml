with (obj_doorway)
{
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_pl, false, true) != -4)
        event_perform(ev_collision, obj_pl);
}

if (global.snowdin_flag[12] == 2)
    exit;

if (active == true)
{
    instance_create(200, -10, obj_molten_rock_snowdin_19);
    obj_snowdin_19_piston.active = true;
    active = false;
}

if (camera_end == true)
{
    obj_snowdin_19_piston.active = false;
    
    if (scr_camera_move(obj_pl.x, obj_pl.y, 3) == true)
        active = 2;
}

if (active == 2)
{
    active = false;
    camera_end = false;
    audio_stop_sound(snd_puzzle_woodmove);
    
    if (!global.dialogue_open)
        scr_cutscene_end();
    else
        global.cutscene = false;
    
    __view_set(e__VW.Object, 0, obj_pl);
    obj_snowdin_19_lever_overworld_yellow.waiter = 0;
    instance_destroy(obj_camera);
}
