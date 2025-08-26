if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var ball_offset = 30;

switch (attack_tick)
{
    case 30:
        var x_origin = battle_box.x;
        var y_origin = battle_box.bbox_top - 50;
        var ball_dir = 270;
        var i = ball_dir - ball_offset;
        
        while (i <= (ball_dir + ball_offset))
        {
            var ball = instance_create_depth(x_origin + lengthdir_x(45, i), y_origin + lengthdir_y(45, i), -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
            ball.direction = i;
            ball.alarm[0] = 30;
            i += ball_offset;
        }
        
        break;
    
    case 90:
        var x_origin = battle_box.bbox_left - 50;
        var y_origin = battle_box.y;
        var ball_dir = 0;
        var i = ball_dir - ball_offset;
        
        while (i <= (ball_dir + ball_offset))
        {
            var ball = instance_create_depth(x_origin + lengthdir_x(45, i), y_origin + lengthdir_y(45, i), -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
            ball.direction = i;
            ball.alarm[0] = 30;
            i += ball_offset;
        }
        
        break;
    
    case 120:
        var x_origin = battle_box.bbox_left - 25;
        var y_origin = battle_box.bbox_bottom + 25;
        var ball_dir = 45;
        var i = ball_dir - ball_offset;
        
        while (i <= (ball_dir + ball_offset))
        {
            var ball = instance_create_depth(x_origin + lengthdir_x(45, i), y_origin + lengthdir_y(45, i), -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
            ball.direction = i;
            ball.alarm[0] = 30;
            i += ball_offset;
        }
        
        break;
    
    case 175:
        var x_origin = battle_box.bbox_right + 50;
        var y_origin = battle_box.y;
        var ball_dir = 180;
        var i = ball_dir - ball_offset;
        
        while (i <= (ball_dir + ball_offset))
        {
            var ball = instance_create_depth(x_origin + lengthdir_x(45, i), y_origin + lengthdir_y(45, i), -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
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
