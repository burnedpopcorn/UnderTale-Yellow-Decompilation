if (live_call())
    return global.live_result;

battle_box = 3154;
created_spawner = 0;
attack_duration = 0;
alarm[1] = 300;
attack_list = ds_list_create();
ds_list_add(attack_list, 0, 1, 2, 3, 4, 5, 7);
modifier_attack = choose(1, 2);
modifier_enabled = irandom_range(1, 6);
modifier_noloop = false;
event_user(1);
scr_enable_battle_box_surface();
