if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        x = xstart + random_range(-1, 1);
        y = ystart + random_range(-1, 1);
        draw_alpha = lerp(draw_alpha, 1, 0.05);
        
        if (draw_alpha >= 0.99)
        {
            draw_alpha = 1;
            scene++;
        }
        
        break;
    
    case 1:
        cutscene_wait(1);
        break;
    
    case 2:
        image_alpha -= 0.1;
        
        if (image_alpha <= 0)
        {
            if (global.hotland_flag[2] == 1)
            {
                instance_create_depth(0, 0, 0, obj_ceroba_phase_2_overworld_cutscene_1);
                room_goto(rm_mansion_bedroom);
            }
            
            if (global.hotland_flag[2] == 2)
            {
                instance_create_depth(0, 0, 0, obj_ceroba_phase_2_overworld_cutscene_2);
                room_goto(rm_mansion_study);
            }
            
            instance_destroy();
        }
        
        break;
}
