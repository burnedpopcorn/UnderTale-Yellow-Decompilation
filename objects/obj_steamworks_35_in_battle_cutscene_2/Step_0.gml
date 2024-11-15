switch (scene)
{
    case 0:
        cutscene_wait(0.75);
        break;
    
    case 1:
        cutscene_sfx_play(25, 1);
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
            sndfnt = 108;
            message[0] = "* And there we go!";
            message[1] = "* Good job holding your#  own while I was#  occupied.";
            message[2] = "* Axis seems pretty#  dazed, one more shock#  should do him in!";
            message[3] = "* Let's end this!";
            prt[0] = 372;
            prt[1] = 372;
            prt[2] = 371;
            prt[3] = 370;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 6:
        global.party_member = 1171;
        scene++;
        break;
    
    case 7:
        with (obj_dialogue_box_battle_transformation_any)
            event_user(0);
        
        instance_destroy();
        break;
}
