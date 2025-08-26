if (live_call())
    return global.live_result;

instance_create_depth(0, 0, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_vine_thick);
var vine2 = instance_create_depth(640, 0, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_vine_thick);
vine2.image_xscale = -1;
instance_create_depth(16, -48, obj_flowey_battle_final.depth + 3, obj_flowey_battle_phase_2_vine_spinny);
var spin2 = instance_create_depth(624, -48, obj_flowey_battle_final.depth + 3, obj_flowey_battle_phase_2_vine_spinny);
spin2.spin_speed *= -1;
var thorn_number = 10;
var thorn_pos_multiplier = 0.1;
var spawn_depth = obj_flowey_battle_final.depth + 2;
var left_weakpoint_pos = "top";
var right_weakpoint_pos = "top";
var left_weakpoint_number = irandom_range(0, 4);
var right_weakpoint_number = irandom_range(5, 9);

for (var i = 0; i < thorn_number; i++)
{
    var thorn;
    
    if (left_weakpoint_number == i && left_weakpoint_pos == "bottom")
        thorn = instance_create_depth(0, 0, spawn_depth, obj_flowey_battle_phase_2_paper_weakpoint);
    else
        thorn = instance_create_depth(0, 0, spawn_depth, obj_flowey_battle_phase_2_paper_thorn);
    
    with (thorn)
    {
        path_start(pt_flowey_battle_phase_2_paper_left, 2, path_action_restart, true);
        path_position = thorn_pos_multiplier * i;
    }
    
    if (left_weakpoint_number == i && left_weakpoint_pos == "top")
        thorn = instance_create_depth(0, 0, spawn_depth, obj_flowey_battle_phase_2_paper_weakpoint);
    else
        thorn = instance_create_depth(0, 0, spawn_depth, obj_flowey_battle_phase_2_paper_thorn);
    
    with (thorn)
    {
        path_start(pt_flowey_battle_phase_2_paper_left_top, 2, path_action_restart, true);
        path_position = (thorn_pos_multiplier * 0.5) + (thorn_pos_multiplier * i);
    }
    
    if (right_weakpoint_number == i && right_weakpoint_pos == "bottom")
        thorn = instance_create_depth(0, 0, spawn_depth, obj_flowey_battle_phase_2_paper_weakpoint);
    else
        thorn = instance_create_depth(0, 0, spawn_depth, obj_flowey_battle_phase_2_paper_thorn);
    
    with (thorn)
    {
        path_start(pt_flowey_battle_phase_2_paper_right, 2, path_action_restart, true);
        path_position = thorn_pos_multiplier * i;
    }
    
    if (right_weakpoint_number == i && right_weakpoint_pos == "top")
        thorn = instance_create_depth(0, 0, spawn_depth, obj_flowey_battle_phase_2_paper_weakpoint);
    else
        thorn = instance_create_depth(0, 0, spawn_depth, obj_flowey_battle_phase_2_paper_thorn);
    
    with (thorn)
    {
        path_start(pt_flowey_battle_phase_2_paper_right_top, 2, path_action_restart, true);
        path_position = (thorn_pos_multiplier * 0.5) + (thorn_pos_multiplier * i);
    }
}

instance_create_depth(0, 0, -100, obj_flowey_battle_paper_plane_spawner);
instance_create_depth(0, 0, -100, obj_flowey_battle_paper_ball_spawner);
instance_create_depth(0, 0, -100, obj_flowey_battle_paper_ball_thrown_spawner);
destroy_noloop = false;
