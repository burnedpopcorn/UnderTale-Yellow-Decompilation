if (live_call())
    return global.live_result;

scr_enable_battle_box_surface();
scene = 0;
cutscene_timer = 0;
flowey_sprite_original = obj_battle_flowey_body_1.base_sprite;
flowey_depth_original = obj_battle_flowey_body_1.depth;
obj_battle_flowey_body_1.base_sprite = 2847;
obj_battle_flowey_body_1.depth = 20;
