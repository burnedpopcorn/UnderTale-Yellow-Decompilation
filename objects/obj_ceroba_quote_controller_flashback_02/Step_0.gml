if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(2);
        break;
    
    case 1:
        instance_create(402, 90, obj_quote_bubble_battle_yellow_2);
        instance_create_depth(0, 0, obj_quote_bubble_battle_yellow_2.depth - 1, obj_quote_battle_ceroba_flashback_02);
        cutscene_advance();
        break;
    
    case 2:
        if (!instance_exists(obj_quote_battle_ceroba_flashback_02))
            cutscene_advance();
        
        break;
    
    case 3:
        obj_ceroba_body_pacifist_phase_2.image_speed = 1;
        cutscene_advance();
        break;
    
    case 4:
        if (obj_ceroba_body_pacifist_phase_2.sprite_index == spr_ceroba_p2_get_up_3 && obj_ceroba_body_pacifist_phase_2.image_index >= 6)
        {
            obj_ceroba_body_pacifist_phase_2.image_index = 6;
            obj_ceroba_body_pacifist_phase_2.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 5:
        cutscene_wait(1);
        break;
    
    case 6:
        instance_create(402, 90, obj_quote_bubble_battle_yellow_2);
        instance_create_depth(0, 0, obj_quote_bubble_battle_yellow_2.depth - 1, obj_quote_battle_ceroba_flashback_02b);
        cutscene_advance();
        break;
    
    case 7:
        if (!audio_is_playing(mus_mothers_love_phase_3_buildup))
            audio_play_sound(mus_mothers_love_phase_3_buildup, 1, 0);
        
        if (cutscene_wait(3.11))
        {
            obj_ceroba_body_pacifist_phase_2.image_speed = 1;
            instance_destroy(obj_quote_battle_ceroba_flashback_02b);
            instance_destroy(obj_quote_bubble_battle);
            instance_destroy();
        }
        
        break;
}
