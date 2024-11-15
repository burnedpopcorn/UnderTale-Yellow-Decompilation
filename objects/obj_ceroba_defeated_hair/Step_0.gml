if (live_call())
    return global.live_result;

if (instance_exists(obj_ceroba_body_pacifist_phase_2))
{
    switch (obj_ceroba_body_pacifist_phase_2.sprite_index)
    {
        case -4:
            attach_points = [[-100, -1740]];
            break;
        
        case spr_ceroba_p2_get_up_1:
            attach_points = [[326, 230], [326, 230], [326, 230], [326, 230], [326, 230], [326, 230], [326, 230], [329, 225], [329, 229], [328, 229], [328, 229], [326, 235], [326, 234], [326, 233], [326, 231], [326, 231], [326, 231], [326, 231], [326, 231], [326, 231], [326, 231], [326, 231], [326, 231], [326, 231], [326, 231], [326, 239], [-400, -400]];
            break;
        
        case spr_ceroba_p2_get_up_2:
            attach_points = [[322, 230], [322, 235], [322, 239], [322, 238], [322, 230], [322, 226], [322, 224], [322, 224], [322, 224], [322, 223], [323, 200], [314, 189], [314, 187], [314, 187], [314, 190], [314, 192]];
            break;
        
        case spr_ceroba_p2_get_up_3:
            attach_points = [[314, 192], [314, 189], [314, 189], [314, 191], [314, 191], [314, 189], [314, 187], [314, 187], [314, 201], [-900, -900]];
            break;
        
        default:
            instance_destroy();
            exit;
            break;
    }
    
    scr_point_attach(attach_points, 2833);
}
