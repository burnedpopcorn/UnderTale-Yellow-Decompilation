var battle_box, laser, ball;

if (live_call())
    return global.live_result;

battle_box = 3154;

switch (attack_tick)
{
    case 20:
    case 50:
    case 80:
    case 110:
        laser = instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_axis_blue_laser_geno);
        laser.vspeed = 4;
        break;
    
    case 160:
    case 190:
    case 220:
    case 250:
    case 280:
        laser = instance_create_depth(battle_box.bbox_left - 20, battle_box.y, -100, obj_battle_enemy_attack_axis_blue_laser_geno);
        laser.image_angle = 90;
        laser.hspeed = 4;
        break;
    
    case 30:
        ball = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_axis_geno_energy_ball_pulse);
        ball.move_speed = 9;
        ball.image_speed_base = 2.5;
        break;
    
    case 290:
        instance_destroy();
        break;
}

attack_tick += 1;
