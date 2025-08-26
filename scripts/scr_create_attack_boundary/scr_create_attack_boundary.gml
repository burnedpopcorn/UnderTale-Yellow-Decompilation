function scr_create_attack_boundary(arg0, arg1, arg2, arg3, arg4, arg5)
{
    instance_create(0, 0, obj_attack_boundary_creator);
    obj_attack_boundary_creator.create_x = arg0;
    obj_attack_boundary_creator.create_y = arg1;
    obj_attack_boundary_creator.width = arg2;
    obj_attack_boundary_creator.height = arg3;
    obj_attack_boundary_creator.thickness = arg4;
    obj_attack_boundary_creator.unique_id = arg5;
    
    with (obj_attack_boundary_creator)
        event_user(0);
}
