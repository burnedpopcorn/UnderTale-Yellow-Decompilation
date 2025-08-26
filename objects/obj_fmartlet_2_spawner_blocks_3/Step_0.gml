if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

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
        var block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_glass);
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
        var block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_glass);
        block.direction = 180;
        break;
    
    case 110:
        var arrow = instance_create_depth(battle_box.bbox_left + 15, battle_box.bbox_top - 64, -100, obj_martlet_attack_block_arrow);
        arrow.arrow_dir = 180;
        arrow = instance_create_depth(battle_box.bbox_left + 67, battle_box.bbox_top - 64, -100, obj_martlet_attack_block_arrow);
        arrow.arrow_dir = 0;
        break;
    
    case 120:
        var block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 29, -105, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 53, -105, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 126:
        var block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 29, -105, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 53, -105, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 100, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 160:
        var block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 166:
        var block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_glass);
        block.direction = 180;
        break;
    
    case 172:
        var block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 190:
        var block = instance_create_depth(battle_box.bbox_right + 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_arrow);
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
        var block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 226:
        var block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 260:
        var block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 266:
        var block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_glass);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 272:
        var block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 29, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 278:
        var block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 53, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 77, -105, obj_martlet_attack_block_hurt);
        block.direction = 0;
        break;
    
    case 284:
        var block = instance_create_depth(battle_box.bbox_left - 48, battle_box.bbox_top + 5, -105, obj_martlet_attack_block_hurt);
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
