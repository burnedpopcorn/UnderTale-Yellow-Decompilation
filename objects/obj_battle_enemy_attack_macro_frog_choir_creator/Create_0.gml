if (live_call())
    return global.live_result;

battle_box = obj_dialogue_box_battle_transformation_any;
instance_create_depth(battle_box.x, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_macro_frog_choir_conductor);
max_frogs = 10;
green_frog_spawn_point = irandom_range(2, 5);
spawn_green_frog = false;
platform_speed = 3;
platform_delay = 30;
alarm[0] = 30;
scr_enable_battle_box_surface();
