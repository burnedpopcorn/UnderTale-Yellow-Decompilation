if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (attack_tick)
{
    case 30:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        block_vspeed = 6;
        break;
    
    case 45:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 60:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 75:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 100:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 120:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 140:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        break;
    
    case 165:
        for (var i = battle_box.bbox_top; i < battle_box.bbox_bottom; i += 24)
        {
            var glass = instance_create_depth(battle_box.bbox_left - 40, i, -100, obj_martlet_attack_glass);
            glass.hspeed = 8;
            glass.vspeed = 0;
        }
        
        break;
    
    case 195:
        for (var i = battle_box.bbox_top; i < battle_box.bbox_bottom; i += 24)
        {
            var glass = instance_create_depth(battle_box.bbox_right + 40, i, -100, obj_martlet_attack_glass);
            glass.hspeed = -8;
            glass.vspeed = 0;
        }
        
        break;
    
    case 260:
        instance_destroy();
        break;
}

with (obj_martlet_attack_block)
    vspeed = other.block_vspeed;

with (obj_martlet_attack_block_hurt)
    vspeed = other.block_vspeed;

with (obj_martlet_attack_glass)
{
    if (hspeed == 0)
        vspeed = other.block_vspeed;
}

attack_tick += 1;

if (global.image_alpha_enemy_attacking >= 0)
{
    if (bbox_overlay_alpha > 0)
        bbox_overlay_alpha -= 0.1;
}
