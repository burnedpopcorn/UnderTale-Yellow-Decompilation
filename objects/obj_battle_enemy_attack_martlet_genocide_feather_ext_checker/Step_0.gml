if (can_move == true)
{
    if (can_fade_out == true)
    {
        if (feather_alpha > 0)
        {
            feather_alpha -= 0.1;
            
            if (feather_alpha < 0)
                feather_alpha = 0;
            
            if (feather_alpha == 0)
            {
                instance_destroy();
                exit;
            }
        }
    }
    
    for (i = 0; i < fcreate_count; i += 1)
    {
        if (instance_exists(id_feather[i]))
        {
            with (id_feather[i])
                event_user(0);
        }
    }
    
    feather_radius += feather_speed;
    
    if (can_fade_out == false)
    {
        var fade_out_result = true;
        
        for (i = 0; i < fcreate_count; i += 1)
        {
            if (id_feather[i].x <= obj_dialogue_box_battle_transformation_any.bbox_right && id_feather[i].x >= obj_dialogue_box_battle_transformation_any.bbox_left && id_feather[i].y <= obj_dialogue_box_battle_transformation_any.bbox_bottom && id_feather[i].y >= obj_dialogue_box_battle_transformation_any.bbox_top)
            {
                fade_out_result = false;
                break;
            }
        }
        
        can_fade_out = fade_out_result;
    }
}
