switch (scene)
{
    case 0:
        cutscene_sfx_play(436, 1);
        scr_screenshake_battle(10, 1);
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        obj_dialogue_box_battle_transformation_any.battle_box_resize_midfight = true;
        scene++;
        break;
    
    case 3:
        if (obj_dialogue_box_battle_transformation_any.battle_box_resize_midfight == false)
            cutscene_advance();
        
        break;
    
    case 4:
        scr_text_battle();
        
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* Clover! I'm almost through!";
            message[1] = "* Whatever you're doing, it#  seems to be working!";
            message[2] = "* Keep at it until he's out of#  juice!";
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 5:
        cutscene_wait(1);
        break;
    
    case 6:
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        
        with (instance_create(0, 0, obj_quote_battle_axis_pacifist_cutscenes))
        {
            message[0] = "UM.#I CAN HEAR YOU.";
            message[1] = "YOU TWO THINK#YOU ARE SOOO#SMART.";
            message[2] = "HA, I DO NOT#RUN ON \"juice.\"";
            message[3] = "IN FACT, I DO#NOT RUN AT ALL. ";
            message[4] = "I ROLL.";
            message[5] = "OBVIOUSLY.";
            message_end = 5;
        }
        
        cutscene_advance();
        break;
    
    case 7:
        if (!instance_exists(obj_quote_battle_axis_pacifist_cutscenes))
        {
            with (obj_heart_battle_fighting_parent)
                moveable = false;
            
            cutscene_advance();
        }
        
        break;
    
    case 8:
        scr_text_battle();
        
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* ...";
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 9:
        with (obj_dialogue_box_battle_transformation_any)
            event_user(0);
        
        instance_destroy();
        break;
}
