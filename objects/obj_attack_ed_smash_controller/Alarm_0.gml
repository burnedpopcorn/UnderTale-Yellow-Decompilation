var ed_hand;

ed_hand = instance_create(obj_dialogue_box_battle_transformation_any.x + (30 * spawn_side), obj_dialogue_box_battle_transformation_any.bbox_bottom, obj_attack_ed_smash_hand);
alarm[0] = spawn_interval;
spawn_side *= -1;
