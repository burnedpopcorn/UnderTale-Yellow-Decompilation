if (live_call())
    return global.live_result;

switch (path_index)
{
    case pt_flowey_battle_phase_2_paper_right:
        image_angle = direction + 90;
        break;
    
    case pt_flowey_battle_phase_2_paper_right_top:
        image_angle = direction - 90;
        break;
    
    case pt_flowey_battle_phase_2_paper_left:
        image_angle = direction - 90;
        break;
    
    case pt_flowey_battle_phase_2_paper_left_top:
        image_angle = direction + 90;
        break;
}

path_speed = 4;
