function scr_late_audio_enemy_encounter()
{
    var game_mode, battle_enemy_name;
    
    game_mode = global.game_mode;
    battle_enemy_name = global.battle_enemy_name;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "martlet pacifist")
        {
            if (global.sound_carry_overworld == false)
            {
                scr_audio_stop_sound(0);
                audio_sound_gain(mus_martletbattle_yellow, 1, 0);
                audio_sound_pitch(mus_martletbattle_yellow, 1);
                audio_play_sound(mus_martletbattle_yellow, 20, true);
            }
            
            audio_extend = false;
        }
    }
}
