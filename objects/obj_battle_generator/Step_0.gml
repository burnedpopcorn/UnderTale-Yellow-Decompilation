var battle_enemy_name, game_mode;

battle_enemy_name = global.battle_enemy_name;
game_mode = global.game_mode;
script_execute(scr_controls_settings);

if (global.attack_end_text == false)
    script_execute(scr_battle_core_directory_enemy_attack_scripts);
