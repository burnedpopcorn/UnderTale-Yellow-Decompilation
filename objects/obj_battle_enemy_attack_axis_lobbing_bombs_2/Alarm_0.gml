if (live_call())
    return global.live_result;

bomb_side = choose(1, 2, 3, 4);
var bomb_offset = 90;
var bomb;

switch (bomb_side)
{
    case 1:
        bomb = instance_create_depth(battle_box.x - 100, choose(battle_box.y - bomb_offset, battle_box.y + bomb_offset), -100, obj_battle_enemy_attack_axis_bomb_2);
        bomb.gravity_direction = 180;
        bomb.direction = 0;
        break;
    
    case 2:
        bomb = instance_create_depth(choose(battle_box.x - bomb_offset, battle_box.x + bomb_offset), battle_box.y - 100, -100, obj_battle_enemy_attack_axis_bomb_2);
        bomb.gravity_direction = 90;
        bomb.direction = 270;
        break;
    
    case 3:
        bomb = instance_create_depth(battle_box.x + 100, choose(battle_box.y - bomb_offset, battle_box.y + bomb_offset), -100, obj_battle_enemy_attack_axis_bomb_2);
        bomb.gravity_direction = 0;
        bomb.direction = 180;
        break;
    
    case 4:
        bomb = instance_create_depth(choose(battle_box.x - bomb_offset, battle_box.x + bomb_offset), battle_box.y + 100, -100, obj_battle_enemy_attack_axis_bomb_2);
        bomb.gravity_direction = 270;
        bomb.direction = 90;
        break;
}

bomb.image_angle = bomb.direction - 90;
alarm[0] = attack_interval;
