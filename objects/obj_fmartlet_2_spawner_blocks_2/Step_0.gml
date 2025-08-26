if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (attack_tick)
{
    case 30:
        instance_create_depth(battle_box.bbox_left - 160, battle_box.y, -100, obj_fmartlet_star_big);
        break;
    
    case 100:
        instance_create_depth(battle_box.bbox_right + 200, battle_box.y - 40, -100, obj_fmartlet_star_big);
        break;
    
    case 180:
        instance_create_depth(battle_box.bbox_left - 180, battle_box.y + 40, -100, obj_fmartlet_star_big);
        break;
    
    case 280:
        instance_create_depth(battle_box.x, battle_box.bbox_top - 180, -100, obj_fmartlet_star_big);
        break;
    
    case 360:
        instance_create_depth(battle_box.bbox_left - 200, battle_box.y + 40, -100, obj_fmartlet_star_big);
        break;
    
    case 560:
        instance_destroy();
        break;
}

attack_tick += 1;
