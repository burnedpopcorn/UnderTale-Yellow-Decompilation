function scr_cutscene_battle_guardener_1()
{
    switch (scene)
    {
        case 0:
            if (message_current == 1)
                cutscene_wait(1.5);
            
            break;
        
        case 1:
            draw_enabled = false;
            instance_create_depth(-100, 220, -100, obj_guardener_guy_a);
            instance_create_depth(room_width + 100, 220, -100, obj_guardener_guy_b);
            cutscene_advance();
            break;
        
        case 2:
            if (obj_guardener_guy_a.is_on_target && obj_guardener_guy_b.is_on_target)
                cutscene_advance();
        
        case 3:
            cutscene_wait(1);
            break;
        
        case 4:
            cutscene_advance();
            message_adv = true;
            break;
        
        case 5:
            if (message_current == 11)
                cutscene_wait(1);
            
            break;
        
        case 6:
            message[11] = "THEY KNOW.#I JUST SAID THAT.";
            message_length = string_length(message[message_current]);
            cutscene_advance();
            break;
        
        case 7:
            cutscene_wait(1);
            break;
        
        case 8:
            draw_enabled = false;
            cutscene_advance();
            break;
        
        case 9:
            cutscene_wait(1.5);
            break;
        
        case 10:
            message_adv = true;
            cutscene_advance();
            break;
        
        case 11:
            if (message_current >= 12 && characters >= message_length)
            {
                message_adv = true;
                
                if (message_current == 13)
                    cutscene_advance();
            }
            
            break;
    }
    
    switch (message_current)
    {
        case 1:
        case 11:
        case 12:
        case 13:
            skippable = false;
            break;
        
        default:
            skippable = true;
            break;
    }
}
