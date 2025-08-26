function scr_battle_core_directory_no_attack()
{
    var battle_enemy_name = global.battle_enemy_name;
    var enemy_attack = global.enemy_attack;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "decibat")
        {
            script_execute(scr_start_enemy_sparing_decibat);
            no_loop_can_attack = true;
        }
        else if (battle_enemy_name == "dalv")
        {
            script_execute(scr_start_enemy_no_attack_dalv);
            no_loop_can_attack = true;
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            script_execute(scr_start_enemy_no_attack_insomnitot_solo);
            no_loop_can_attack = true;
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            script_execute(scr_start_enemy_no_attack_insomnitot_duo);
            no_loop_can_attack = true;
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            script_execute(scr_start_enemy_no_attack_know_cone_insomnitot_duo);
            no_loop_can_attack = true;
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            script_execute(scr_start_enemy_no_attack_martlet_pacifist);
            no_loop_can_attack = true;
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            script_execute(scr_start_enemy_no_attack_martlet_genocide);
            no_loop_can_attack = true;
        }
        else if (battle_enemy_name == "dummy training pacifist")
        {
            script_execute(scr_start_enemy_no_attack_dummy_training_pacifist);
            no_loop_can_attack = true;
        }
        else if (battle_enemy_name == "axis" || battle_enemy_name == "axis genocide")
        {
            script_execute(scr_start_enemy_no_attack_axis);
            no_loop_can_attack = true;
        }
    }
}
