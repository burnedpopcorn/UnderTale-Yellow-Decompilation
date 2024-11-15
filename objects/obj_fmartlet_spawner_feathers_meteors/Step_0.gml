var battle_box, attack_instance, meteor;

if (live_call())
    return global.live_result;

battle_box = 3154;

switch (attack_tick)
{
    case 30:
        attack_instance = instance_create_depth(battle_box.bbox_right + 30, battle_box.bbox_top - 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_left + 15;
        attack_instance.y_target_override = battle_box.bbox_top + 20;
        break;
    
    case 45:
        attack_instance = instance_create_depth(battle_box.bbox_left - 30, battle_box.y, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_right - 20;
        attack_instance.y_target_override = battle_box.y;
        break;
    
    case 60:
        attack_instance = instance_create_depth(battle_box.bbox_right + 30, battle_box.bbox_bottom + 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_left + 30;
        attack_instance.y_target_override = battle_box.bbox_bottom - 20;
        break;
    
    case 80:
        meteor = instance_create_depth(battle_box.bbox_right + 60, battle_box.bbox_top - 240, -100, obj_fmartlet_meteor);
        meteor.hspeed = -7;
        break;
    
    case 100:
        attack_instance = instance_create_depth(battle_box.bbox_left + 30, battle_box.bbox_bottom + 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_right - 20;
        attack_instance.y_target_override = battle_box.bbox_top + 20;
        break;
    
    case 110:
        meteor = instance_create_depth(battle_box.bbox_left - 70, battle_box.bbox_bottom + 20, -100, obj_fmartlet_meteor);
        meteor.hspeed = 4;
        meteor.vspeed = -22;
        break;
    
    case 115:
        attack_instance = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.x;
        attack_instance.y_target_override = battle_box.bbox_top + 20;
        break;
    
    case 130:
        attack_instance = instance_create_depth(battle_box.bbox_right - 30, battle_box.bbox_bottom + 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_left + 20;
        attack_instance.y_target_override = battle_box.bbox_top + 20;
        break;
    
    case 185:
        attack_instance = instance_create_depth(battle_box.bbox_left - 20, battle_box.bbox_top - 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_right - 20;
        attack_instance.y_target_override = battle_box.bbox_bottom - 20;
        break;
    
    case 197:
        attack_instance = instance_create_depth(battle_box.bbox_right + 20, battle_box.bbox_top - 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.x;
        attack_instance.y_target_override = battle_box.y;
        break;
    
    case 209:
        attack_instance = instance_create_depth(battle_box.bbox_right + 20, battle_box.bbox_bottom + 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_left + 20;
        attack_instance.y_target_override = battle_box.bbox_top + 20;
        break;
    
    case 260:
        instance_destroy();
        break;
}

attack_tick += 1;
