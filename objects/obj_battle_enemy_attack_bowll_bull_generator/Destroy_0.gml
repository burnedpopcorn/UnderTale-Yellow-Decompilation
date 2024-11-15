if (instance_exists(obj_battle_enemy_attack_bowll_bull_cape))
{
    with (obj_battle_enemy_attack_bowll_bull_cape)
        instance_destroy();
}

if (instance_exists(obj_battle_enemy_attack_bowll_bull_bull))
{
    with (obj_battle_enemy_attack_bowll_bull_bull)
        instance_destroy();
}

if (instance_exists(obj_battle_enemy_attack_bowll_bull_dust))
{
    with (obj_battle_enemy_attack_bowll_bull_dust)
        instance_destroy();
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
