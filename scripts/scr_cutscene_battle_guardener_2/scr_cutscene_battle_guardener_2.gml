function scr_cutscene_battle_guardener_2()
{
    script_execute(scr_controls_text);
    
    switch (scene)
    {
        case 0:
            if (message_current == 4)
                cutscene_wait(2);
            
            break;
        
        case 1:
            draw_enabled = false;
            cutscene_wait(1);
            break;
        
        case 2:
            cutscene_advance();
            message_adv = true;
            break;
        
        case 3:
            if (message_current == 6)
            {
                if (characters >= message_length && key_select_pressed)
                {
                    draw_enabled = false;
                    cutscene_advance();
                }
            }
            
            break;
        
        case 4:
            obj_guardener_guy_a.active = false;
            obj_guardener_guy_b.active = false;
            
            if (obj_guardener_guy_a.is_on_target && obj_guardener_guy_b.is_on_target)
                cutscene_advance();
            
            break;
        
        case 5:
            cutscene_wait(0.5);
            break;
        
        case 6:
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
            
            with (obj_quote_bubble_battle)
                instance_destroy();
            
            instance_destroy(obj_quote_battle_guardener_attack_end);
            break;
    }
    
    switch (message_current)
    {
        case 4:
        case 6:
            skippable = false;
            break;
        
        default:
            skippable = true;
            break;
    }
}
