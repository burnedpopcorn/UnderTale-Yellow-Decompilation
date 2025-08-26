if (live_call())
    return global.live_result;

battle_box = obj_dialogue_box_battle_transformation_any;
obstacle_offset = 15;

if (global.hotland_flag[2] == 3)
    obstacle_offset = 18;

scr_enable_battle_box_surface();
