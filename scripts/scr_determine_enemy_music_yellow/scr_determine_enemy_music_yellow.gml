function scr_determine_enemy_music_yellow()
{
    var current_world_value, battle_mus, mus_pitch;
    
    current_world_value = script_execute(scr_determine_world_value_yellow);
    battle_mus = 124;
    
    switch (current_world_value)
    {
        case 0:
            battle_mus = 124;
            break;
        
        case 1:
            battle_mus = 124;
            break;
        
        case 2:
            battle_mus = 162;
            break;
        
        case 3:
            battle_mus = 513;
            break;
        
        case 4:
            battle_mus = 208;
            break;
    }
    
    if (global.sound_carry_overworld == false)
    {
        if (global.kill_number[current_world_value] <= 7)
        {
            if (global.kill_number[current_world_value] > 0)
            {
                audio_sound_gain(mus_genobattle_yellow, 1, 0);
                audio_play_sound(mus_genobattle_yellow, 20, true);
                mus_pitch = (global.kill_number[current_world_value] / 7) * 10 * 0.1;
                audio_sound_pitch(mus_genobattle_yellow, mus_pitch);
            }
            else
            {
                audio_sound_gain(mus_nobodycame_yellow, 1, 0);
                audio_play_sound(mus_nobodycame_yellow, 20, true);
            }
        }
        else
        {
            audio_sound_gain(battle_mus, 1, 0);
            audio_sound_pitch(battle_mus, 1);
            audio_play_sound(battle_mus, 20, true);
        }
    }
}
