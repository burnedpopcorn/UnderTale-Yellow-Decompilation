if (!instance_exists(obj_battle_enemy_attack_friendliness_pellets_yellow) && !instance_exists(obj_quote_battle_flowey_intro_parent_yellow) && !instance_exists(obj_battle_fade_out_screen))
{
    hit_self_count += global.hit_self;
    instance_create(367, 134, obj_quote_bubble_battle);
    
    if (hit_self_count == 0)
        instance_create(0, 0, obj_quote_battle_flowey_intro_success_yellow);
    else if (global.hit_self == false)
        instance_create(0, 0, obj_quote_battle_flowey_intro_failure_yellow);
    else if (hit_self_count == 1)
        instance_create(0, 0, obj_quote_battle_flowey_intro_miss_1_yellow);
    else if (hit_self_count == 2)
        instance_create(0, 0, obj_quote_battle_flowey_intro_miss_2_yellow);
    else if (hit_self_count == 3)
        instance_create(0, 0, obj_quote_battle_flowey_intro_miss_3_yellow);
    
    global.hit_self = false;
    can_decrease_audio = true;
}

if (global.hit_self == true && can_decrease_audio == true)
{
    if (hit_self_count >= 2)
    {
        execute_audio_silence = true;
    }
    else
    {
        audio_pitch -= audio_decrease_rate;
        audio_sound_pitch(mus_floweynew_yellow, audio_pitch);
    }
    
    can_decrease_audio = false;
}

if (execute_audio_silence == true)
{
    if (audio_pitch > 0)
        audio_pitch -= audio_silence_rate;
    
    audio_sound_pitch(mus_floweynew_yellow, audio_pitch);
    
    if (audio_pitch <= 0)
        execute_audio_silence = false;
}
