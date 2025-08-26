if (live_call())
    return global.live_result;

battle_box = obj_dialogue_box_battle_transformation_any;
instance_create_depth(choose(battle_box.bbox_left, battle_box.bbox_right), battle_box.bbox_top - 40, -100, obj_ceroba_attack_fire_mask);

if (global.hotland_flag[2] != 0)
{
}

attack_stop = false;
