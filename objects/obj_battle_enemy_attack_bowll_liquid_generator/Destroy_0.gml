if (instance_exists(obj_battle_enemy_attack_bowll_liquid_marshmallow))
{
    with (obj_battle_enemy_attack_bowll_liquid_marshmallow)
        instance_destroy();
}

if (instance_exists(obj_battle_enemy_attack_bowll_liquid_mug))
{
    with (obj_battle_enemy_attack_bowll_liquid_mug)
        instance_destroy();
}

if (instance_exists(obj_battle_enemy_attack_bowll_liquid_top_leader))
{
    with (obj_battle_enemy_attack_bowll_liquid_top_leader)
        instance_destroy();
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
