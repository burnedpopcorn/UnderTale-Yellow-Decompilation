if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
instance_create_depth(battle_box.bbox_left + 30, battle_box.y, -100, obj_battle_enemy_attack_bigfrog_herofly);
var frog1 = instance_create_depth(battle_box.bbox_left + 15, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_macro_big_frog);
frog1.image_xscale = -1;
frog1.alarm[0] = 30;
var frog2 = instance_create_depth(battle_box.bbox_right - 30, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_macro_big_frog);
frog2.alarm[0] = 90;
alarm[1] = 210;
scr_enable_battle_box_surface();
