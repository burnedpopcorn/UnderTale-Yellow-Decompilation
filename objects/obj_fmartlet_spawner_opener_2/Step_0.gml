if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (round(attack_tick))
{
    case 30:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 50:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 70:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 75:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 85:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 110:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 120:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        break;
    
    case 135:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 147:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 160:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_arrow);
        break;
    
    case 200:
        scr_battle_box_resize_midfight(160, 82);
        target_direction = 180;
        break;
    
    case 210:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y - 36, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y - 12, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y + 12, -100, obj_martlet_attack_block);
        block.direction = 180;
        break;
    
    case 225:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y - 36, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y - 12, -100, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y + 12, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 240:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y - 36, -100, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y - 12, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y + 12, -100, obj_martlet_attack_glass);
        block.direction = 180;
        break;
    
    case 260:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y - 36, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y - 12, -100, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y + 12, -100, obj_martlet_attack_glass);
        block.direction = 180;
        break;
    
    case 265:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y - 36, -100, obj_martlet_attack_block);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y - 12, -100, obj_martlet_attack_glass);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y + 12, -100, obj_martlet_attack_block_hurt);
        block.direction = 180;
        break;
    
    case 280:
        var block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y - 36, -100, obj_martlet_attack_block_arrow);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y - 12, -100, obj_martlet_attack_block_arrow);
        block.direction = 180;
        block = instance_create_depth(battle_box.bbox_right + 24, battle_box.y + 12, -100, obj_martlet_attack_block_arrow);
        block.direction = 180;
        
        with (obj_martlet_attack_block_arrow)
            arrow_dir = 180;
        
        break;
    
    case 310:
        var block = instance_create_depth(battle_box.bbox_left - 24, battle_box.y - 36, -100, obj_martlet_attack_block);
        block.direction = 0;
        block.speed = 7;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.y - 12, -100, obj_martlet_attack_block);
        block.direction = 0;
        block.speed = 7;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.y + 12, -100, obj_martlet_attack_block);
        block.direction = 0;
        block.speed = 7;
        break;
    
    case 325:
        var block = instance_create_depth(battle_box.bbox_left - 24, battle_box.y - 36, -100, obj_martlet_attack_glass);
        block.direction = 0;
        block.speed = 7;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.y - 12, -100, obj_martlet_attack_block_hurt);
        block.direction = 0;
        block.speed = 7;
        block = instance_create_depth(battle_box.bbox_left - 24, battle_box.y + 12, -100, obj_martlet_attack_glass);
        block.direction = 0;
        block.speed = 7;
        break;
    
    case 380:
        instance_destroy();
        break;
}

if (attack_tick != 480)
    attack_tick += 1;

if (global.image_alpha_enemy_attacking >= 0)
{
    if (bbox_overlay_alpha > 0)
        bbox_overlay_alpha -= 0.1;
}

if (hint_draw == true)
{
    if (hint_alpha < 1)
        hint_alpha += 0.1;
}
else
{
    hint_alpha = 0;
}
