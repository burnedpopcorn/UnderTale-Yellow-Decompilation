switch (scene)
{
    case 0:
        cutscene_wait(0.75);
        break;
    
    case 1:
        cutscene_sfx_play(snd_undertale_explosion, 1);
        scr_screenshake_battle(20, 2);
        break;
    
    case 2:
        cutscene_wait(1.5);
        break;
    
    case 3:
        obj_dialogue_box_battle_transformation_any.battle_box_resize_midfight = true;
        scene++;
        break;
    
    case 4:
        if (obj_dialogue_box_battle_transformation_any.battle_box_resize_midfight == false)
            cutscene_advance();
        
        break;
    
    case 5:
        scr_text_battle();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "* And there we go!";
            message[1] = "* Good job holding your#  own while I was#  occupied.";
            message[2] = "* Axis seems pretty#  dazed, one more shock#  should do him in!";
            message[3] = "* Let's end this!";
            prt[0] = spr_portrait_ceroba_smile;
            prt[1] = spr_portrait_ceroba_smile;
            prt[2] = spr_portrait_ceroba_alt;
            prt[3] = spr_portrait_ceroba_neutral;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 6:
        global.party_member = obj_ceroba_follower;
        scene++;
        break;
    
    case 7:
        with (obj_dialogue_box_battle_transformation_any)
            event_user(0);
        
        instance_destroy();
        break;
}
