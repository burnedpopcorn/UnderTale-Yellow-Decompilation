var battle_box, ball_offset, x_origin, y_origin, ball_dir, i, ball;

if (live_call())
    return global.live_result;

battle_box = 3154;
ball_offset = 30;

switch (attack_tick)
{
    case 30:
        x_origin = battle_box.x;
        y_origin = battle_box.bbox_top - 50;
        ball_dir = 270;
        i = ball_dir - ball_offset;
        
        while (i <= (ball_dir + ball_offset))
        {
            ball = instance_create_depth(x_origin + lengthdir_x(45, i), y_origin + lengthdir_y(45, i), -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
            ball.direction = i;
            ball.alarm[0] = 30;
            i += ball_offset;
        }
        
        break;
    
    case 90:
        x_origin = battle_box.bbox_left - 50;
        y_origin = battle_box.y;
        ball_dir = 0;
        i = ball_dir - ball_offset;
        
        while (i <= (ball_dir + ball_offset))
        {
            ball = instance_create_depth(x_origin + lengthdir_x(45, i), y_origin + lengthdir_y(45, i), -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
            ball.direction = i;
            ball.alarm[0] = 30;
            i += ball_offset;
        }
        
        break;
    
    case 120:
        x_origin = battle_box.bbox_left - 25;
        y_origin = battle_box.bbox_bottom + 25;
        ball_dir = 45;
        i = ball_dir - ball_offset;
        
        while (i <= (ball_dir + ball_offset))
        {
            ball = instance_create_depth(x_origin + lengthdir_x(45, i), y_origin + lengthdir_y(45, i), -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
            ball.direction = i;
            ball.alarm[0] = 30;
            i += ball_offset;
        }
        
        break;
    
    case 175:
        x_origin = battle_box.bbox_right + 50;
        y_origin = battle_box.y;
        ball_dir = 180;
        i = ball_dir - ball_offset;
        
        while (i <= (ball_dir + ball_offset))
        {
            ball = instance_create_depth(x_origin + lengthdir_x(45, i), y_origin + lengthdir_y(45, i), -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
            ball.direction = i;
            ball.alarm[0] = 30;
            i += ball_offset;
        }
        
        break;
    
    case 250:
        instance_destroy();
        break;
}

attack_tick += 1;
