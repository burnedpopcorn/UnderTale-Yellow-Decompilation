if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (round(attack_tick))
{
    case 30:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 36:
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 42:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 60:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 70:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 80:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 95:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        break;
    
    case 110:
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 118:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 126:
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 150:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        
        with (obj_martlet_attack_block_arrow)
            arrow_dir = 180;
        
        break;
    
    case 180:
        scr_battle_box_resize_midfight(160, 106);
        break;
    
    case 200:
        var block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 215:
        var block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_glass);
        block.direction = 0;
        break;
    
    case 240:
        var block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_block);
        block.direction = 0;
        break;
    
    case 265:
        var block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_glass);
        block.direction = 0;
        break;
    
    case 277:
        var block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_block);
        block.direction = 0;
        break;
    
    case 289:
        var block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 301:
        var block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_glass);
        block.direction = 0;
        break;
    
    case 340:
        instance_destroy();
        break;
}

attack_tick += 1;

if (global.image_alpha_enemy_attacking >= 0)
{
    if (bbox_overlay_alpha > 0)
        bbox_overlay_alpha -= 0.1;
}
