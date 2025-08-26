if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var xx = battle_box.bbox_left + 10;

if (obj_heart_battle_fighting_parent.x > 320)
    xx = battle_box.x - 6;

instance_create_depth(xx, battle_box.bbox_top + 10, -100, obj_battle_enemy_attack_asgore_warning);
alarm[0] = attack_offset;
turn_count--;

if (turn_count <= 0)
{
    obj_battle_enemy_attack_asgore_checker.alarm[0] = 15;
    instance_destroy();
}
