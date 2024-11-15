if (live_call())
    return global.live_result;

switch (step)
{
    case 1:
        if (mode == 0)
        {
            rotation = -1;
            instance_create_depth(x, y, -100, obj_flowey_battle_phase_2_clay_cone_collider_blue);
            image_blend = make_color_rgb(0, 162, 232);
        }
        else
        {
            rotation = 1;
            instance_create_depth(x, y, -100, obj_flowey_battle_phase_2_clay_cone_collider_orange);
            image_blend = make_color_rgb(255, 125, 0);
        }
        
        image_angle = 90 * rotation;
        step++;
        break;
    
    case 2:
        if (image_alpha < 1)
            image_alpha += 0.1;
        else
            step++;
        
        break;
    
    case 3:
        if (image_angle != (-90 * rotation))
            image_angle -= (10 * rotation);
        else
            step++;
        
        break;
    
    case 4:
        if (image_alpha > 0)
            image_alpha -= 0.1;
        else
            instance_destroy();
        
        break;
}
