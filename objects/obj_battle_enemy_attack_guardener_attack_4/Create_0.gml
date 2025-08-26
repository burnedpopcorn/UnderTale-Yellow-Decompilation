if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;
scr_enable_battle_box_surface();
var xx = choose(box.bbox_left + 40, box.bbox_right - 40);
var yy = choose(box.bbox_top + 40, box.bbox_bottom - 40);
instance_create_depth(xx, yy, obj_heart_battle_fighting_parent.depth - 2, obj_battle_enemy_attack_guardener_launcher_fadein);
