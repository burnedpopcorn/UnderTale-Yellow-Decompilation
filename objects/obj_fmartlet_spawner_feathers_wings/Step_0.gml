if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (attack_tick)
{
    case 20:
        martlet_wing_spawn(0);
        break;
    
    case 40:
        martlet_wing_spawn(1);
        break;
    
    case 60:
        var attack_instance = instance_create_depth(battle_box.bbox_left - 30, battle_box.bbox_top - 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_right - 30;
        attack_instance.y_target_override = battle_box.bbox_bottom - 30;
        break;
    
    case 70:
        var attack_instance = instance_create_depth(battle_box.bbox_left - 30, battle_box.bbox_bottom + 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_right - 30;
        attack_instance.y_target_override = battle_box.bbox_top + 30;
        break;
    
    case 100:
        martlet_wing_spawn(1);
        break;
    
    case 120:
        var attack_instance = instance_create_depth(battle_box.bbox_right + 30, battle_box.y, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.x;
        attack_instance.y_target_override = battle_box.y;
        break;
    
    case 140:
        var attack_instance = instance_create_depth(battle_box.bbox_left + 20, battle_box.bbox_top - 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_right - 20;
        attack_instance.y_target_override = battle_box.bbox_bottom - 30;
        break;
    
    case 150:
        var attack_instance = instance_create_depth(battle_box.bbox_right - 20, battle_box.bbox_top - 20, -100, obj_martlet_attack_splitting_feather);
        attack_instance.x_target_override = battle_box.bbox_left + 20;
        attack_instance.y_target_override = battle_box.bbox_bottom - 30;
        break;
    
    case 240:
        instance_destroy();
        break;
}

function martlet_wing_spawn(arg0)
{
    var battle_box = obj_dialogue_box_battle_transformation_any;
    var xx = 0;
    var yy = 0;
    var xscale = 1;
    var yscale = 1;
    var angle = 0;
    
    switch (arg0)
    {
        case 0:
            xx = battle_box.bbox_left + 4;
            yy = battle_box.bbox_top + 30;
            break;
        
        case 1:
            xx = battle_box.bbox_right - 4;
            yy = battle_box.bbox_top + 30;
            xscale = -1;
            break;
    }
    
    var wing = instance_create_depth(xx, yy, -50, obj_fmartlet_wings);
    
    with (wing)
    {
        image_xscale = xscale;
        image_yscale = yscale;
        image_angle = angle;
    }
}

attack_tick += 1;
