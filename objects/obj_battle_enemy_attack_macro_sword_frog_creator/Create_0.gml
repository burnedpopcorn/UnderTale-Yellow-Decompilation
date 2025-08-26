if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
attack_tick = 0;
scr_enable_battle_box_surface();
instance_create_depth(battle_box.x, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_macro_knight);
