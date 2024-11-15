var battle_box, ball_offset, bomb;

if (live_call())
    return global.live_result;

battle_box = 3154;
ball_offset = 30;

switch (attack_tick)
{
    case 30:
        bomb = instance_create_depth(battle_box.x - 40, battle_box.bbox_top - 30, -100, obj_battle_enemy_attack_axis_bomb_geno);
        break;
    
    case 60:
        bomb = instance_create_depth(battle_box.x + 40, battle_box.bbox_top - 30, -100, obj_battle_enemy_attack_axis_bomb_geno);
        break;
    
    case 90:
        bomb = instance_create_depth(battle_box.bbox_left - 30, battle_box.y, -100, obj_battle_enemy_attack_axis_bomb_geno);
        bomb.gravity_direction = 0;
        break;
    
    case 105:
        bomb = instance_create_depth(battle_box.bbox_right + 30, battle_box.y - 40, -100, obj_battle_enemy_attack_axis_bomb_geno);
        bomb.gravity_direction = 180;
        break;
    
    case 120:
        bomb = instance_create_depth(battle_box.bbox_left - 30, battle_box.y + 40, -100, obj_battle_enemy_attack_axis_bomb_geno);
        bomb.gravity_direction = 0;
        break;
    
    case 150:
        bomb = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 40, -100, obj_battle_enemy_attack_axis_bomb_geno);
        bomb.gravity_direction = 90;
        break;
    
    case 180:
        bomb = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 40, -100, obj_battle_enemy_attack_axis_bomb_geno);
        bomb.gravity_direction = 90;
        break;
    
    case 210:
        bomb = instance_create_depth(battle_box.bbox_left - 30, battle_box.y - 40, -100, obj_battle_enemy_attack_axis_bomb_geno);
        bomb.gravity_direction = 0;
        break;
    
    case 270:
        instance_destroy();
        break;
}

attack_tick += 1;
