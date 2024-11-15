hp_weakpoint = 10;
instance_create_depth(-40, -40, obj_flowey_battle_final.depth - 8, obj_flowey_battle_phase_2_weakpoint);
instance_create_depth(0, 0, obj_flowey_battle_final.depth - 10, obj_flowey_battle_phase_2_weakpoint_vines);
instance_create_depth(room_width / 2, (room_height / 2) + 50, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_clay_growing);
instance_create_depth(0, 0, -200, obj_flowey_battle_phase_2_clay_bullet_generator);
instance_create_depth(0, 0, 0, obj_flowey_battle_phase_2_clay_eyedrop_spawner);
