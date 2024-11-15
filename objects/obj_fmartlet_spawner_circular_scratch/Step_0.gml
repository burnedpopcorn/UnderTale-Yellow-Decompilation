var battle_box, spawner, attack_instance;

if (live_call())
    return global.live_result;

battle_box = 3154;

switch (attack_tick)
{
    case 30:
        if (!instance_exists(obj_battle_enemy_attack_martlet_ff_2_final_checker))
        {
            spawner = instance_create_depth(320, 320, -100, obj_battle_enemy_attack_martlet_ff_2_final_checker);
            spawner.feather_angle_total_max = 240;
        }
        
        break;
    
    case 60:
        attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.image_xscale = -1;
        attack_instance.attack_delay = 5;
        break;
    
    case 90:
        attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.attack_delay = 5;
        break;
    
    case 105:
        attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.image_xscale = -1;
        attack_instance.image_yscale = -1;
        attack_instance.attack_delay = 5;
        break;
    
    case 145:
        attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
        attack_instance.attack_delay = 5;
        break;
    
    case 160:
        attack_instance = instance_create_depth(battle_box.bbox_left - 40, battle_box.y, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.x;
        attack_instance.y_target_override = battle_box.bbox_top + 20;
        break;
    
    case 180:
        attack_instance = instance_create_depth(battle_box.bbox_right + 40, battle_box.y, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.x;
        attack_instance.y_target_override = battle_box.bbox_bottom - 20;
        break;
    
    case 230:
        instance_destroy();
        break;
}

attack_tick += 1;
