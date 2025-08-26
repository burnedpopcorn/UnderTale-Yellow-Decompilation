switch (scene)
{
    case 0:
        cutscene_wait(0.5);
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
            sndfnt = snd_talk_ceroba;
            message[0] = "* What now? His SOUL#  gauge is pulsing...";
            message[1] = "* You have any ideas?";
            prt[0] = spr_portrait_ceroba_alt;
            prt[1] = spr_portrait_ceroba_neutral;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 4:
        with (obj_dialogue_box_battle_transformation_any)
            event_user(0);
        
        instance_destroy();
        break;
}
