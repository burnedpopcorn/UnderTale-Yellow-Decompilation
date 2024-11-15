function scr_battle_core_directory_flavor_text_enemy_3_default_1()
{
    var battle_enemy_name, enemy_mode_3, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    enemy_mode_3 = global.enemy_mode_3;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "trihecta separated")
            message[0] = "* Ta is bouncing around exploring#  their new world.";
    }
}
