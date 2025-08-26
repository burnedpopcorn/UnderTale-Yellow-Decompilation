if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var ball_offset = 30;

switch (attack_tick)
{
    case 30:
        var ball = instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_axis_geno_energy_ball_pulse);
        ball.image_index = 0;
        break;
    
    case 70:
        var ball = instance_create_depth(battle_box.bbox_right + 20, battle_box.y, -100, obj_battle_enemy_attack_axis_geno_energy_ball_pulse);
        ball.image_index = ball.image_number * 0.25;
        break;
    
    case 110:
        var ball = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_axis_geno_energy_ball_pulse);
        ball.image_index = ball.image_number * 0.5;
        break;
    
    case 150:
        var ball = instance_create_depth(battle_box.bbox_left - 20, battle_box.y, -100, obj_battle_enemy_attack_axis_geno_energy_ball_pulse);
        ball.image_index = ball.image_number * 0.75;
        break;
    
    case 220:
        instance_destroy();
        break;
}

attack_tick += 1;
