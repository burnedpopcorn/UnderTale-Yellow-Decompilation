instance_create_depth(320, 320, -9999, obj_battle_enemy_attack_axis_hand);
attack_interval = room_speed * 0.8;
attack_count = 12;
scene = 0;
cutscene_timer = 0;
flowey_sprite_original = obj_battle_flowey_body_1.base_sprite;
obj_battle_flowey_body_1.base_sprite = spr_corrupted_axis;
