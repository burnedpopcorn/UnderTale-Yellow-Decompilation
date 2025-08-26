if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_heart_battle_fighting_parent.image_alpha > 0)
            obj_heart_battle_fighting_parent.image_alpha -= 0.2;
        else
            obj_heart_battle_fighting_parent.image_alpha = 0;
        
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
            sndfnt = snd_talk_ceroba;
            message[0] = "* I think that did the#  trick!";
            message[1] = "* You're pretty clever in#  intense situations.";
            message[2] = "* I'm... impressed.";
            prt[0] = spr_portrait_ceroba_smile_alt;
            prt[1] = spr_portrait_ceroba_smile;
            prt[2] = spr_portrait_ceroba_neutral;
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
