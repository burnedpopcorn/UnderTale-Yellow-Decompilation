if (instance_exists(obj_stresso))
{
    obj_stresso.active = true;
    instance_destroy();
}
else
{
    scr_cutscene_end();
    global.current_room_overworld = room_get_name(room);
    instance_create(0, 0, obj_elevator_controller);
    trs = instance_create(0, 0, obj_transition);
    
    with (trs)
    {
        newRoom = 93;
        xx = 160;
        yy = 125;
    }
}
