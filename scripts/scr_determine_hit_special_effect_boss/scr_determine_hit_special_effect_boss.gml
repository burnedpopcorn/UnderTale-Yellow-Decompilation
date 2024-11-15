function scr_determine_hit_special_effect_boss()
{
    var game_mode, battle_enemy_name, enemy_mode;
    
    game_mode = global.game_mode;
    battle_enemy_name = global.battle_enemy_name;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "dalv")
        {
            enemy_mode = global.enemy_mode;
            
            switch (enemy_mode)
            {
                case 0:
                case 1:
                    if (global.current_hp_enemy <= (global.max_hp_enemy / 2) && global.enemy_mode_gen == 0)
                    {
                        global.enemy_mode_gen = 1;
                        global.turns_passed = 0;
                        global.enemy_sparing = false;
                        global.action_2_important = false;
                    }
                    
                    break;
            }
        }
        else if (battle_enemy_name == "dummy training pacifist")
        {
            if (global.hit_count >= 3)
                audio_stop_sound(mus_prebattle3_yellow);
        }
    }
}
