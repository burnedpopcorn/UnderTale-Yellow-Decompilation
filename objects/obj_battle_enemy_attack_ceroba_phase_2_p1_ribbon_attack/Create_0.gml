if (live_call())
    return global.live_result;

battle_box = obj_dialogue_box_battle_transformation_any;
instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_ceroba_ribbon_base);
lantern_offset = 120;
alarm[0] = 30;
alarm[1] = 240;
