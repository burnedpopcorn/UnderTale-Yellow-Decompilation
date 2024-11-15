var battle_box;

if (live_call())
    return global.live_result;

bullet_list = ds_list_create();
ds_list_add(bullet_list, "left", "right");
alarm[0] = 40;
bullet_offset = 25;
wave_number = 0;
battle_box = 3154;
instance_create_depth(battle_box.bbox_left + 26, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_pillar);
instance_create_depth(battle_box.bbox_right - 26, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_pillar);
