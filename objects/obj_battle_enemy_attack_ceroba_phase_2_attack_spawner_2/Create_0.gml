if (live_call())
    return global.live_result;

battle_box = obj_dialogue_box_battle_transformation_any;
created_spawner = 0;
old_spawner = 0;
attack_duration = 0;
alarm[1] = 300;
attack_list = ds_list_create();
ds_list_add(attack_list, 0, 1, 2, 3, 4, 5, 7, 8, 9);
modifier_attack = choose(1, 2);
modifier_enabled = irandom_range(1, 4);
modifier_noloop = false;
overlap_timer = 0;
event_user(1);
scr_enable_battle_box_surface();
