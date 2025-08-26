if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var ball_offset = 30;
var bomb = -4;

switch (attack_tick)
{
    case 30:
        var ball = instance_create_depth(battle_box.bbox_left - 10, battle_box.bbox_top - 10, -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
        ball.alarm[0] = 30;
        ball.direction = 315;
        break;
    
    case 60:
        var ball = instance_create_depth(battle_box.bbox_right + 10, battle_box.bbox_top - 10, -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
        ball.alarm[0] = 30;
        ball.direction = 225;
        break;
    
    case 125:
        bomb = instance_create_depth(battle_box.bbox_left - 30, battle_box.y, -100, obj_battle_enemy_attack_axis_bomb_geno);
        break;
    
    case 160:
        var ball = instance_create_depth(battle_box.bbox_right + 20, battle_box.y, -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
        ball.alarm[0] = 60;
        ball.direction = 180;
        break;
    
    case 180:
        var ball = instance_create_depth(battle_box.x + 30, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
        ball.alarm[0] = 60;
        ball.direction = 225;
        ball = instance_create_depth(battle_box.x + 30, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
        ball.alarm[0] = 60;
        ball.direction = 135;
        break;
    
    case 215:
        bomb = instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_axis_bomb_geno);
        break;
    
    case 280:
        instance_destroy();
        break;
}

if (bomb != -4)
{
    if (bomb.x < battle_box.bbox_left)
        bomb.gravity_direction = 0;
    
    if (bomb.x > battle_box.bbox_right)
        bomb.gravity_direction = 180;
    
    if (bomb.y > battle_box.bbox_bottom)
        bomb.gravity_direction = 90;
    
    if (bomb.y < battle_box.bbox_top)
        bomb.gravity_direction = 270;
}

attack_tick += 1;
