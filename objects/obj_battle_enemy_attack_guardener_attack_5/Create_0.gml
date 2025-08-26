if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;
var xx = 320;
var yy = box.bbox_top - 60;
instance_create_depth(xx, yy, obj_heart_battle_fighting_parent.depth - 2, obj_battle_enemy_attack_guardener_laser_launcher);
