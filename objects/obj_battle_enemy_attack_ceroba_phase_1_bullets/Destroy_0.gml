if (live_call())
    return global.live_result;

instance_destroy(obj_battle_enemy_attack_bullet_1);
instance_destroy(obj_battle_enemy_attack_bullet_2);
instance_destroy(obj_battle_enemy_attack_bullet_residue);
instance_destroy(obj_ceroba_bullet_particle_controller);
instance_destroy(obj_battle_enemy_attack_bullet_impact);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);

ds_list_clear(bullet_list);
