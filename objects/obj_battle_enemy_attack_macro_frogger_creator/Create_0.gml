if (live_call())
    return global.live_result;

battle_box = 3154;
attack_tick = 0;
scr_enable_battle_box_surface();
obj_surface_drawer.depth = -100;
road_1 = instance_create_depth(battle_box.bbox_left + 4, battle_box.bbox_top + 7, 101, obj_battle_enemy_attack_macro_road);
road_2 = instance_create_depth(battle_box.bbox_left + 4, battle_box.bbox_top + 7 + 68, 101, obj_battle_enemy_attack_macro_road);
instance_create_depth(battle_box.x, battle_box.bbox_top + 7, 101, obj_battle_enemy_attack_macro_road);
instance_create_depth(battle_box.x, battle_box.bbox_top + 7 + 68, 101, obj_battle_enemy_attack_macro_road);
car_delay = 45;
alarm[0] = car_delay;
alarm[1] = car_delay * 1.5;
car_count = 6;
spawn_probability = 40;
frog_noloop = false;
