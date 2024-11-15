if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(2);
        break;
    
    case 1:
        instance_create(402, 90, obj_quote_bubble_battle_yellow_2);
        instance_create_depth(0, 0, obj_quote_bubble_battle_yellow_2.depth - 1, obj_quote_battle_ceroba_flashback_01);
        cutscene_advance();
        break;
    
    case 2:
        if (!instance_exists(obj_quote_battle_ceroba_flashback_01))
            cutscene_advance();
        
        break;
    
    case 3:
        obj_ceroba_body_pacifist_phase_2.image_speed = 1;
        instance_destroy();
        global.battle_music = audio_play_sound(mus_mothers_love_phase_2, 20, true);
        audio_sound_gain(mus_mothers_love_phase_2, 1, 0);
        audio_sound_pitch(mus_mothers_love_phase_2, 1);
        obj_petal_generator_phase_2.fade_out = false;
        obj_petal_generator_phase_2.petals_enabled = true;
        break;
}
