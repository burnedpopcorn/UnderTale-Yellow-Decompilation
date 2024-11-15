var battle_box, ball_offset, laser, laser2, dif, i, ball;

if (live_call())
    return global.live_result;

battle_box = 3154;
ball_offset = 30;

switch (attack_tick)
{
    case 20:
    case 70:
    case 120:
        laser = instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_axis_blue_laser_geno);
        laser.vspeed = 2;
        laser2 = instance_create_depth(battle_box.bbox_right + 20, battle_box.y, -100, obj_battle_enemy_attack_axis_orange_laser_geno);
        laser2.image_angle = 90;
        laser2.hspeed = -2;
        break;
    
    case 170:
    case 220:
    case 270:
        laser = instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_axis_orange_laser_geno);
        laser.vspeed = 2;
        laser2 = instance_create_depth(battle_box.bbox_right + 20, battle_box.y, -100, obj_battle_enemy_attack_axis_blue_laser_geno);
        laser2.image_angle = 90;
        laser2.hspeed = -2;
        break;
    
    case 30:
        dif = (battle_box.bbox_bottom - 20 - (battle_box.bbox_top + 20)) / 2;
        i = battle_box.bbox_top + 20;
        
        while (i <= (battle_box.bbox_bottom - 20))
        {
            ball = instance_create_depth(battle_box.bbox_left - 20, i, -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
            ball.direction = 0;
            ball.alarm[0] = 30;
            ball.move_speed = 3;
            i += dif;
        }
        
        break;
    
    case 140:
        dif = (battle_box.bbox_right - 20 - (battle_box.bbox_left + 20)) / 2;
        i = battle_box.bbox_left + 20;
        
        while (i <= (battle_box.bbox_right - 20))
        {
            ball = instance_create_depth(i, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_axis_energy_ball_boss_geno);
            ball.direction = 270;
            ball.alarm[0] = 30;
            ball.move_speed = 3;
            i += dif;
        }
        
        break;
    
    case 310:
        instance_destroy();
        break;
}

attack_tick += 1;
