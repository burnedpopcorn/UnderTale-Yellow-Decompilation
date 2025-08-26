if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (round(attack_tick))
{
    case 30:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 36:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 42:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 48:
        break;
    
    case 58:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 64:
        break;
    
    case 70:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        break;
    
    case 76:
        break;
    
    case 82:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 106:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 100:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 120:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 132:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 138:
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 148:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        break;
    
    case 170:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 176:
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 182:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 188:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 194:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 200:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 206:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 212:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 240:
        instance_create_depth(battle_box.x, battle_box.bbox_top - 200, -100, obj_fmartlet_star_big);
        break;
    
    case 300:
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        
        with (obj_martlet_attack_block_arrow)
            arrow_dir = 0;
        
        break;
    
    case 380:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        
        with (obj_martlet_attack_block_arrow)
            arrow_dir = 0;
        
        break;
    
    case 420:
        scr_battle_box_resize_midfight(160, 106);
        break;
    
    case 450:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 456:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 470:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 476:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 510:
        var block = instance_create_depth(battle_box.bbox_left - 60, battle_box.bbox_top + 5, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 60, battle_box.bbox_top + 29, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 60, battle_box.bbox_top + 53, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 60, battle_box.bbox_top + 77, -105, obj_martlet_attack_glass);
        block.direction = 0;
        break;
    
    case 490:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 520:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 540:
        var block = instance_create_depth(battle_box.bbox_left - 60, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 60, battle_box.bbox_top + 29, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 60, battle_box.bbox_top + 53, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 60, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 550:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 5, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 29, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 53, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.bbox_top + 77, -100, obj_martlet_attack_block);
        block.direction = 180;
        break;
    
    case 650:
        instance_destroy();
        break;
}

attack_tick += 1;

with (obj_martlet_attack_block)
    speed = other.block_speed;

with (obj_martlet_attack_block_hurt)
    speed = other.block_speed;

with (obj_martlet_attack_glass)
    speed = other.block_speed;

with (obj_martlet_attack_block_arrow)
    speed = other.block_speed;
