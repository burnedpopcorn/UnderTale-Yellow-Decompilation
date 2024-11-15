var box;

if (live_call())
    return global.live_result;

box = 3154;
scene = 0;
cutscene_timer = 0;
obj_heart_battle_fighting_parent.depth = -99999;
obj_dialogue_box_battle_transformation_any.depth = -99998;
depth = obj_dialogue_box_battle_transformation_any.depth + 1;
flowey_depth_og = obj_battle_flowey_body_1.depth;
obj_battle_flowey_body_1.depth = depth + 1;
background_alpha = 0;
instance_create_depth(box.x, box.bbox_top - 10, depth - 100, obj_flowey_1_attack_audience_hate_sign);
scr_enable_battle_box_surface();
