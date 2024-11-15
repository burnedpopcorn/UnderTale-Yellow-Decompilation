if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_macro_road)
    instance_destroy();

with (obj_battle_enemy_attack_macro_car_smoke)
    instance_destroy();

with (obj_battle_enemy_attack_macro_car)
    instance_destroy();

if (instance_exists(obj_battle_enemy_attack_macro_frogger))
{
    global.turns_passed -= 2;
    instance_destroy(obj_battle_enemy_attack_macro_frogger);
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
