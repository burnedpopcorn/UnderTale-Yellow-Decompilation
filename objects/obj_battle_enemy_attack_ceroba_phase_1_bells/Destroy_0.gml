if (live_call())
    return global.live_result;

instance_destroy(obj_battle_enemy_attack_ceroba_bell);
instance_destroy(obj_battle_enemy_attack_ceroba_phase_1_bell_fragments);
instance_destroy(obj_ceroba_ring_surface_controller);
instance_destroy(obj_attack_ceroba_bell_ring_blue);
instance_destroy(obj_attack_ceroba_bell_ring_orange);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
