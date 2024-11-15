var battle_box, type;

if (live_call())
    return global.live_result;

battle_box = 3154;
type = choose(1, 2, 3, 4);

switch (type)
{
    case 1:
        instance_create_depth(battle_box.bbox_left - 40, battle_box.bbox_top - 10, -100, obj_battle_enemy_attack_asgore_hand_horizontal);
        instance_create_depth(battle_box.bbox_right + 40, battle_box.bbox_bottom, -100, obj_battle_enemy_attack_asgore_hand_horizontal);
        break;
    
    case 2:
        instance_create_depth(battle_box.bbox_left - 40, battle_box.bbox_bottom, -100, obj_battle_enemy_attack_asgore_hand_horizontal);
        instance_create_depth(battle_box.bbox_right + 40, battle_box.bbox_top - 10, -100, obj_battle_enemy_attack_asgore_hand_horizontal);
        break;
    
    case 3:
        instance_create_depth(battle_box.bbox_left - 10, battle_box.bbox_bottom + 40, -100, obj_battle_enemy_attack_asgore_hand_vertical);
        instance_create_depth(battle_box.bbox_right - 20, battle_box.bbox_top - 40, -100, obj_battle_enemy_attack_asgore_hand_vertical);
        break;
    
    case 4:
        instance_create_depth(battle_box.bbox_left - 10, battle_box.bbox_top - 40, -100, obj_battle_enemy_attack_asgore_hand_vertical);
        instance_create_depth(battle_box.bbox_right - 20, battle_box.bbox_bottom + 40, -100, obj_battle_enemy_attack_asgore_hand_vertical);
        break;
}

obj_battle_enemy_attack_asgore_checker.alarm[0] = 90;
instance_destroy();
