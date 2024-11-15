if (global.lastroom == "rm_darkruins_19")
{
    with (obj_dalv3)
        instance_destroy();
    
    with (obj_dalv_boards)
        instance_destroy();
    
    instance_create(144, 188, obj_dalvExit_blocker);
}
