if (global.current_hp_self <= 0)
    instance_destroy();

if (instance_exists(obj_heart_battle_menu_fight))
{
    if (instance_exists(obj_text_battle_move_selected_enemy_fight_parent))
    {
        with (obj_heart_battle_menu)
        {
            no_loop = false;
            image_alpha = 1;
        }
        
        with (obj_text_battle_move_selected_enemy_fight_parent)
            instance_destroy();
        
        with (obj_battle_hp_enemy_parent)
            instance_destroy();
        
        instance_destroy(obj_heart_battle_menu_fight);
    }
    
    instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch);
    
    if (!audio_is_playing(snd_flowey_laugh))
    {
        flowey_laugh = audio_play_sound(snd_flowey_laugh, 1, 0);
        audio_sound_set_track_position(flowey_laugh, irandom_range(0, audio_sound_length(flowey_laugh) * 0.75));
        audio_sound_gain(flowey_laugh, 0, 0);
        audio_sound_gain(flowey_laugh, 1, 200);
        
        if (!alarm[0])
            alarm[0] = 15;
    }
}

if (instance_exists(obj_heart_battle_menu_item))
{
    if (instance_exists(obj_text_battle_move_selected_item_parent))
    {
        with (obj_heart_battle_menu)
        {
            no_loop = false;
            image_alpha = 1;
        }
        
        with (obj_text_battle_move_selected_item_parent)
            instance_destroy();
        
        with (obj_text_battle_move_selected_item_page_count)
            instance_destroy();
        
        instance_destroy(obj_heart_battle_menu_item);
    }
    
    instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch);
    
    if (!audio_is_playing(snd_flowey_laugh))
    {
        flowey_laugh = audio_play_sound(snd_flowey_laugh, 1, 0);
        audio_sound_set_track_position(flowey_laugh, irandom_range(0, audio_sound_length(flowey_laugh) * 0.75));
        audio_sound_gain(flowey_laugh, 0, 0);
        audio_sound_gain(flowey_laugh, 1, 200);
        
        if (!alarm[0])
            alarm[0] = 15;
    }
}
