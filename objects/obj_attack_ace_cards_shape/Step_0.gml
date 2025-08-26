switch (attack_state)
{
    case 1:
        speed = lerp(speed, 0, 0.25);
        
        if (abs(speed) <= 0.02)
        {
            instance_create_depth(x, y, depth, obj_battle_enemy_attack_ace_shockwave);
            speed = 0;
            attack_state += 1;
            alarm[1] = 2;
        }
        
        break;
    
    case 2:
        var heart = obj_heart_battle_fighting_red;
        var target_dir = point_direction(x, y, heart.x, heart.y);
        
        if (y < heart.y)
        {
            direction_inc = lerp(direction_inc, sign(target_dir - direction) * direction_inc_max, 0.2);
            direction += direction_inc;
        }
        
        speed = max_speed;
        break;
}
