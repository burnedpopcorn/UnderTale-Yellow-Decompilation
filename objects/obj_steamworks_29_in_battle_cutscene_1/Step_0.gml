if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(1);
        break;
    
    case 1:
        obj_dialogue_box_battle_transformation_any.battle_box_resize_midfight = true;
        scene++;
        break;
    
    case 2:
        if (obj_dialogue_box_battle_transformation_any.battle_box_resize_midfight == false)
            cutscene_advance();
        
        break;
    
    case 3:
        scr_text_battle();
        
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* Ack!";
            message[1] = "* I'm stuck, Clover!";
            message[2] = "* We need to find a way#  out of this! Fast!";
            prt[0] = 366;
            prt[1] = 368;
            prt[2] = 366;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 4:
        instance_destroy();
        
        with (obj_dialogue_box_battle_transformation_any)
            event_user(0);
        
        break;
}
