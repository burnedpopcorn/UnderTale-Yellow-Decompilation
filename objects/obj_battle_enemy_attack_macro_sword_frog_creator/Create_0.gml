var battle_box;

if (live_call())
    return global.live_result;

battle_box = 3154;
attack_tick = 0;
scr_enable_battle_box_surface();
instance_create_depth(battle_box.x, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_macro_knight);
