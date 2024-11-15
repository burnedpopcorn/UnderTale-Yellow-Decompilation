if (live_call())
    return global.live_result;

layer_sequence_destroy(idle_seq);
layer_destroy("sequence_layer");

with (obj_battle_enemy_attack_mecha_frog_shockwave)
    instance_destroy();

with (obj_battle_enemy_attack_mecha_frog_cockpit)
    instance_destroy();

with (obj_battle_enemy_attack_mecha_frog_glass)
    instance_destroy();

with (obj_battle_enemy_attack_mecha_frog_hand)
    instance_destroy();

with (obj_battle_enemy_attack_mecha_frog_arm)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
