if (live_call())
    return global.live_result;

counter_current = 0;
counter_timer = 0;
depth = -500;
spawner_list = ds_list_create();
ds_list_add(spawner_list, 1592);
ds_list_add(spawner_list, 873);
ds_list_add(spawner_list, 2596);
ds_list_add(spawner_list, 1350);
ds_list_add(spawner_list, 985);
spawner_list_original = ds_list_create();
ds_list_copy(spawner_list_original, spawner_list);
alarm[0] = 30;
scr_enable_battle_box_surface();
alarm[1] = 1200;
soul_shake = false;
soul_can_hurt = false;
fade_out = false;
draw_alpha = 0;
stage = 1;
scene = -2;
cutscene_timer = 0;
fade_out_alpha = 0;
unavoidable_attack = false;
