if (live_call())
    return global.live_result;

bullet_list = ds_list_create();
attack_tick = 0;
ds_list_add(bullet_list, "left", "right");
bullet_offset = 15;
wave_number = 1;
spawn_dist = 70;
var battle_box = obj_dialogue_box_battle_transformation_any;
instance_create_depth(battle_box.x - 40, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_pillar_gray);
instance_create_depth(battle_box.x + 40, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_pillar_gray);
instance_create_depth(battle_box.x - 100, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_pillar_gray);
instance_create_depth(battle_box.x + 100, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_pillar_gray);
