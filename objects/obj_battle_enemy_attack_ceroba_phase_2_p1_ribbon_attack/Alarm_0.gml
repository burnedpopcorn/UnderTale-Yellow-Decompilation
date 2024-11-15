if (live_call())
    return global.live_result;

instance_create_depth(battle_box.bbox_left - 40, battle_box.bbox_top - 80, -100, obj_ceroba_phase_2_p1_ribbon_lantern);
instance_create_depth(battle_box.bbox_right + 40, battle_box.bbox_bottom + 60, -100, obj_ceroba_phase_2_p1_ribbon_lantern);
alarm[0] = lantern_offset;
