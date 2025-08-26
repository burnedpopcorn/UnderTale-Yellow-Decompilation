if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (attack_tick)
{
    case 30:
        var scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        scratch_instance.attack_delay = 10;
        break;
    
    case 45:
        var scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        scratch_instance.image_xscale = -1;
        scratch_instance.attack_delay = 15;
        break;
    
    case 65:
        var scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        scratch_instance.image_yscale = -1;
        scratch_instance.attack_delay = 20;
        break;
    
    case 35:
        var attack_instance = instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.x;
        attack_instance.y_target_override = battle_box.y;
        break;
    
    case 80:
        var attack_instance = instance_create_depth(battle_box.bbox_left - 20, battle_box.y, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_right - 20;
        attack_instance.y_target_override = battle_box.y;
        break;
    
    case 98:
        var attack_instance = instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_left + 20;
        attack_instance.y_target_override = battle_box.y;
        break;
    
    case 108:
        var attack_instance = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_right - 20;
        attack_instance.y_target_override = battle_box.y;
        break;
    
    case 150:
        instance_destroy();
        break;
}

attack_tick += 1;
