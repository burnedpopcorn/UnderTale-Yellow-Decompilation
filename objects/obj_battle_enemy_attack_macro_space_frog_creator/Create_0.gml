if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
attack_tick = 0;
scr_enable_battle_box_surface();
obj_surface_drawer.depth = -100;
frog_green_noloop = false;
frog_green_chance = 8;
meteor_count = 14;
meteor_delay = 30;
alarm[0] = 30;
instance_create_depth(0, 0, 50, obj_battle_enemy_attack_space_rock_space);
instance_create_depth(battle_box.bbox_left - 64, irandom_range(battle_box.y - 30, battle_box.y + 30), -1000, obj_battle_enemy_attack_space_frog);
