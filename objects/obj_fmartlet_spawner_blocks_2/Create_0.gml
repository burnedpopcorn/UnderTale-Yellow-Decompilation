if (live_call())
    return global.live_result;

attack_tick = 0;
scene = 0;
cutscene_timer = 0;
hint_draw = false;
hint_alpha = 0;
block_vspeed = 6;
bbox_overlay_alpha = 1;
depth = obj_heart_battle_fighting_parent.depth + 1;
