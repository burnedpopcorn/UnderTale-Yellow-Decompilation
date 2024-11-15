obj_flowey_battle_final.stage_switch = 0;
instance_create_depth(0, 0, -100, obj_flowey_battle_phase_2_stage_destroy_effect);
instance_destroy(obj_flowey_battle_phase_2_clay_droop_generator);
instance_destroy(obj_flowey_battle_phase_2_clay_eyedrop_spawner);
instance_destroy(obj_flowey_battle_phase_2_clay_droop);
instance_destroy(obj_flowey_battle_phase_2_clay_growing);
instance_destroy(obj_flowey_battle_phase_2_clay_cone);

with (obj_flowey_battle_phase_2_clay_bullet)
    instance_destroy();

with (obj_flowey_battle_phase_2_clay_bullet_generator)
    instance_destroy();

alarm[0] = 999;
