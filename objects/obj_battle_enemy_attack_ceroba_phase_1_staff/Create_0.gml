if (live_call())
    return global.live_result;

battle_box = obj_dialogue_box_battle_transformation_any;
instance_create_depth(battle_box.x, battle_box.y, -100, obj_attack_warning_exclamation_mark);
instance_create_depth(battle_box.bbox_left - 90, battle_box.y - 150, -100, obj_battle_enemy_attack_ceroba_staff_1);
var staff_right = instance_create_depth(battle_box.bbox_right + 90, battle_box.y - 150, -100, obj_battle_enemy_attack_ceroba_staff_1);
staff_right.image_xscale = -1;
rot_time = random_range(2, 4.5);
