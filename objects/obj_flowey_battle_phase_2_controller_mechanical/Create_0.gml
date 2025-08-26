if (live_call())
    return global.live_result;

var weakpoint = instance_create_depth(530, 140, -100, obj_flowey_battle_phase_2_mechanical_drone);
weakpoint = instance_create_depth(110, 140, -100, obj_flowey_battle_phase_2_mechanical_drone);
weakpoint.image_xscale = -1;
scene = 0;
cutscene_timer = 0;
attack_delay = 1;
attack_list = ds_list_create();
ds_list_add(attack_list, 2056, 2830, 651, 2035, 2056);
