if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (attack_tick)
{
    case 20:
        var attack_instance = instance_create_depth(battle_box.bbox_left + 40, 200, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_right + 20;
        attack_instance.y_target_override = battle_box.y;
        break;
    
    case 40:
        var attack_instance = instance_create_depth(battle_box.bbox_right - 40, 440, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_left - 20;
        attack_instance.y_target_override = battle_box.y;
        break;
    
    case 60:
        var attack_instance = instance_create_depth(battle_box.bbox_left - 40, battle_box.y, -100, obj_martlet_attack_splitting_feather);
        attack_instance.feather_create_count = 11;
        attack_instance.feather_targetted = false;
        break;
    
    case 90:
        var attack_instance = instance_create_depth(battle_box.x, battle_box.bbox_top - 40, -100, obj_martlet_attack_splitting_feather);
        break;
    
    case 100:
        var attack_instance = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 40, -100, obj_martlet_attack_splitting_feather);
        break;
    
    case 120:
        var attack_instance = instance_create_depth(battle_box.bbox_right + 40, battle_box.y, -100, obj_martlet_attack_splitting_feather);
        attack_instance.feather_create_count = 11;
        attack_instance.feather_targetted = false;
        attack_instance.x_target_override = battle_box.x;
        attack_instance.y_target_override = battle_box.bbox_top;
        break;
    
    case 150:
        var attack_instance = instance_create_depth(battle_box.bbox_left - 40, battle_box.y, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_right + 40;
        attack_instance.y_target_override = battle_box.y;
        attack_instance = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 40, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.x;
        attack_instance.y_target_override = battle_box.bbox_top - 40;
        break;
    
    case 240:
        instance_destroy();
        break;
}

attack_tick += 1;
