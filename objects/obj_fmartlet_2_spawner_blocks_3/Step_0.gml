var battle_box, block, arrow;

if (live_call())
    return global.live_result;

battle_box = 3154;

switch (round(attack_tick))
{
    case 30:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 48, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 48, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 48, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 48, -100, obj_martlet_attack_block);
        break;
    
    case 38:
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 48, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 48, -100, obj_martlet_attack_glass);
        break;
    
    case 46:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 48, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 48, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 48, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 48, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 54:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 48, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 48, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 48, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 48, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 75:
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_glass);
        block.direction = 0;
        break;
    
    case 85:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 48, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 48, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 48, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 77, battle_box.bbox_top - 48, -100, obj_martlet_attack_glass);
        break;
    
    case 95:
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_glass);
        block.direction = 180;
        break;
    
    case 110:
        arrow = instance_create_depth(battle_box.bbox_left + 15, battle_box.bbox_top - 64, -100, obj_martlet_attack_block_arrow);
        arrow.arrow_dir = 180;
        arrow = instance_create_depth(battle_box.bbox_left + 67, battle_box.bbox_top - 64, -100, obj_martlet_attack_block_arrow);
        arrow.arrow_dir = 0;
        break;
    
    case 120:
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 29, -105, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 53, -105, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 126:
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 29, -105, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 53, -105, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 160:
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 166:
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_glass);
        block.direction = 180;
        break;
    
    case 172:
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 190:
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_arrow);
        block.direction = 180;
        block.arrow_dir = 90;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_arrow);
        block.direction = 180;
        block.arrow_dir = 90;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block_arrow);
        block.direction = 180;
        block.arrow_dir = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_arrow);
        block.direction = 180;
        block.arrow_dir = 180;
        break;
    
    case 220:
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 226:
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 260:
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 266:
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 272:
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 278:
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 284:
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_glass);
        block.direction = 0;
        break;
    
    case 350:
        instance_destroy();
        break;
}

attack_tick += 1;
