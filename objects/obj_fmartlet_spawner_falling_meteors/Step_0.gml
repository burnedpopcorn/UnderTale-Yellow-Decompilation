var battle_box, meteor;

if (live_call())
    return global.live_result;

battle_box = 3154;

switch (attack_tick)
{
    case 30:
        meteor = instance_create_depth(battle_box.bbox_left, battle_box.bbox_top - 220, -100, obj_fmartlet_meteor);
        meteor.hspeed = 5;
        break;
    
    case 90:
        meteor = instance_create_depth(battle_box.bbox_right, battle_box.bbox_top - 220, -100, obj_fmartlet_meteor);
        meteor.hspeed = -4;
        break;
    
    case 125:
        meteor = instance_create_depth(battle_box.bbox_left - 120, battle_box.bbox_top - 220, -100, obj_fmartlet_meteor);
        meteor.hspeed = 8;
        break;
    
    case 155:
        meteor = instance_create_depth(battle_box.bbox_right + 150, battle_box.bbox_top - 240, -100, obj_fmartlet_meteor);
        meteor.hspeed = -10;
        break;
    
    case 220:
        instance_destroy();
        break;
}

attack_tick += 1;
