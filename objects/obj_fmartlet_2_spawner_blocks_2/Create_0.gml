var battle_box, arrow;

if (live_call())
    return global.live_result;

battle_box = 3154;
attack_tick = 0;
scene = 0;
cutscene_timer = 0;
hint_draw = false;
hint_alpha = 0;
bbox_overlay_alpha = 1;
depth = obj_heart_battle_fighting_parent.depth + 1;
arrow = instance_create_depth(battle_box.bbox_left + 4, battle_box.bbox_top + 4, -100, obj_martlet_attack_block_arrow_static);
arrow.arrow_dir = 180;
arrow = instance_create_depth(battle_box.bbox_right - 24, battle_box.bbox_top + 4, -100, obj_martlet_attack_block_arrow_static);
arrow.arrow_dir = 0;
arrow = instance_create_depth(battle_box.x - 12, battle_box.bbox_bottom - 28, -100, obj_martlet_attack_block_arrow_static);
arrow.arrow_dir = 90;
