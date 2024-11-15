if (live_call())
    return global.live_result;

if (instance_exists(obj_ceroba_body_pacifist_phase_2))
{
    switch (obj_ceroba_body_pacifist_phase_2.sprite_index)
    {
        case -4:
            attach_points = [[0, -208]];
            break;
        
        case spr_ceroba_p2_idle_reveal:
            attach_points = [[0, -208], [0, -208], [-400, -400]];
            break;
        
        default:
            attach_points = [[-400, -400]];
            break;
    }
    
    scr_point_attach(attach_points, 2833, true);
}
