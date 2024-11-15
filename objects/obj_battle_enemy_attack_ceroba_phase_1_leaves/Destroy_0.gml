if (live_call())
    return global.live_result;

instance_destroy(obj_battle_enemy_attack_ceroba_petal_pile);
instance_destroy(obj_battle_enemy_attack_ceroba_petal);
instance_destroy(obj_battle_enemy_attack_ceroba_petal_bg);
instance_destroy(obj_battle_enemy_attack_ceroba_phase_1_background_leaves);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);

audio_stop_sound(snd_mart_wind);
