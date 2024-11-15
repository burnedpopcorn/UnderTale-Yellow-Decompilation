function scr_cutscene_battle_guardener_3()
{
    script_execute(scr_controls_text);
    
    switch (scene)
    {
        case 0:
            obj_guardener_guy_a.sprite_index = spr_guardener_guy_c;
            obj_guardener_guy_a.active = true;
            cutscene_advance();
            break;
        
        case 1:
            if (obj_guardener_guy_a.is_on_target && obj_guardener_guy_b.is_on_target)
                cutscene_advance();
            
            break;
        
        case 2:
            if (cutscene_wait(1))
                message_adv = true;
            
            break;
        
        case 3:
            if (message_current == 4)
            {
                if (characters >= message_length)
                {
                    instance_create_depth(obj_guardener_guy_a.x - 90, obj_guardener_guy_a.y, obj_guardener_guy_b.depth, obj_guardener_flower);
                    cutscene_advance();
                }
            }
            
            break;
        
        case 4:
            if (obj_guardener_flower.image_speed == 0)
            {
                draw_enabled = false;
                cutscene_advance();
            }
            
            break;
        
        case 5:
            cutscene_wait(0.5);
            break;
        
        case 6:
            cutscene_advance();
            message_adv = true;
            break;
    }
    
    switch (message_current)
    {
        case 0:
        case 4:
            skippable = false;
            break;
        
        default:
            skippable = true;
            break;
    }
}
