function scr_create_attack_boundary(argument0, argument1, argument2, argument3, argument4, argument5)
{
    instance_create(0, 0, obj_attack_boundary_creator);
    obj_attack_boundary_creator.create_x = argument0;
    obj_attack_boundary_creator.create_y = argument1;
    obj_attack_boundary_creator.width = argument2;
    obj_attack_boundary_creator.height = argument3;
    obj_attack_boundary_creator.thickness = argument4;
    obj_attack_boundary_creator.unique_id = argument5;
    
    with (obj_attack_boundary_creator)
        event_user(0);
}
