switch (scene)
{
    case 0:
        scr_text_battle();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "* Wait! Another robot!?";
            prt[0] = spr_portrait_ceroba_nervous;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 1:
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        instance_create(0, 0, obj_quote_battle_jandroid_a);
        cutscene_advance();
        break;
    
    case 2:
        if (!instance_exists(obj_quote_battle_jandroid_a))
        {
            with (obj_heart_battle_fighting_parent)
                moveable = false;
            
            cutscene_advance();
        }
        
        break;
    
    case 3:
        scr_text_battle();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "* No way! We can't fight#  this thing!";
            message[1] = "* What if Chujin built-";
            message[2] = "* You know what? We'll#  talk later.";
            message[3] = "* Let's find a peaceful#  way around them.";
            message[4] = "* I'll do my best to#  provide defense for us.";
            prt[0] = spr_portrait_ceroba_confounded;
            prt[1] = spr_portrait_ceroba_nervous;
            prt[2] = spr_portrait_ceroba_disapproving;
            prt[3] = spr_portrait_ceroba_closed_eyes;
            prt[4] = spr_portrait_ceroba_alt;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 4:
        with (obj_heart_battle_fighting_parent)
            image_alpha = 1;
        
        with (obj_quote_bubble_battle)
            instance_destroy();
        
        instance_destroy();
        global.sworks_flag[4] = true;
        
        with (obj_dialogue_box_battle_transformation_any)
            event_user(0);
        
        break;
}
