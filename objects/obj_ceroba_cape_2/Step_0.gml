if (live_call())
    return global.live_result;

if (instance_exists(obj_ceroba_body_pacifist_phase_2))
{
    switch (obj_ceroba_body_pacifist_phase_2.sprite_index)
    {
        case -4:
            attach_points = [[-30, -190]];
            break;
        
        default:
            attach_points = [[-400, -400]];
            break;
    }
    
    scr_point_attach(attach_points, 2834, true);
}
