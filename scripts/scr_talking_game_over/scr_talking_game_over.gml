function scr_talking_game_over()
{
    var battle_enemy_name, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    game_mode = global.game_mode;
    
    switch (current_char)
    {
        case " ":
        case "*":
            break;
        
        default:
            if (!instance_exists(obj_death_screen_fade_out_screen))
            {
                audio_stop_sound(sndfnt);
                audio_play_sound(sndfnt, 20, false);
            }
    }
    
    switch (current_char)
    {
        case ".":
        case ",":
        case "?":
        case "!":
            break;
        
        default:
            can_talk = true;
    }
}
