if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_macro_choir_frog)
    instance_destroy();

with (obj_battle_enemy_attack_macro_choir_frog_blue)
    instance_destroy();

with (obj_battle_enemy_attack_macro_choir_frog_orange)
    instance_destroy();

with (obj_battle_enemy_attack_macro_choir_note)
    instance_destroy();

with (obj_battle_enemy_attack_macro_choir_platform)
    instance_destroy();

with (obj_battle_enemy_attack_macro_frog_choir_conductor)
    instance_destroy();

if (instance_exists(obj_battle_enemy_attack_macro_choir_frog_green))
{
    global.turns_passed -= 2;
    instance_destroy(obj_battle_enemy_attack_macro_choir_frog_green);
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
