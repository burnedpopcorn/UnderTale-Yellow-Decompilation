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
            sndfnt = 108;
            message[0] = "* Way to go!";
            message[1] = "* I'll do what I can to#  help us escape for good!";
            prt[0] = 372;
            prt[1] = 371;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 4:
        if (scr_battle_box_resize_midfight(140, 140))
            scene++;
        
        break;
    
    case 5:
        global.party_member = 1171;
        obj_heart_battle_fighting_parent.image_alpha = 1;
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        instance_create(0, 0, obj_quote_battle_guardener);
        instance_destroy();
        break;
}
