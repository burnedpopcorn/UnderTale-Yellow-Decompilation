if (live_call())
    return global.live_result;

with (obj_martlet_attack_talon)
    instance_destroy();

with (obj_martlet_attack_talon_scratch)
    instance_destroy();

with (obj_martlet_attack_talon_scratch_collide)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
