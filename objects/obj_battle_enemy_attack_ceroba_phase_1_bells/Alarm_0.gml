if (live_call())
    return global.live_result;

alarm[0] = 75;
var battle_box = obj_dialogue_box_battle_transformation_any;
var xx = choose(battle_box.bbox_left - 50, battle_box.bbox_right + 50);
instance_create_depth(xx, battle_box.bbox_top, -100, obj_battle_enemy_attack_ceroba_bell);
bell_count--;

if (bell_count < 0)
    instance_destroy();
