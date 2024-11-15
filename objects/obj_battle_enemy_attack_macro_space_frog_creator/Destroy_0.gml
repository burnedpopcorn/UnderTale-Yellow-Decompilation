if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_space_rock_space)
    instance_destroy();

with (obj_battle_space_frog_bullet)
    instance_destroy();

with (obj_battle_enemy_attack_space_rock)
    instance_destroy(id, false);

with (obj_battle_enemy_attack_space_rock_debris)
    instance_destroy();

with (obj_battle_enemy_attack_space_frog)
    instance_destroy();

if (instance_exists(obj_battle_enemy_attack_space_green_frog) && frog_green_noloop == true)
    global.turns_passed -= 2;

with (obj_battle_enemy_attack_space_green_frog)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
