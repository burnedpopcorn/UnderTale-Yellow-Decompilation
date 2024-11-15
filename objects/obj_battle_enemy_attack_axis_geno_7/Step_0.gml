var battle_box, ball_offset, bomb, i, bullet;

if (live_call())
    return global.live_result;

battle_box = 3154;
ball_offset = 30;
bomb = -4;

switch (scene)
{
    case 0:
        for (i = 0; i < bullet_number_max; i++)
        {
            if (timer == floor(i * (360 / bullet_number_max / bullet_speed)))
            {
                bullet = instance_create_depth(battle_box.x, battle_box.y - bullet_distance, -1100, obj_battle_enemy_attack_axis_turret_circling_geno);
                bullet.bullet_speed = bullet_speed * bullet_spin_dir;
                bullet.attack_dir = bullet_attack_dir;
                bullet.bullet_spawner = id;
                bullet.attack_distance = bullet_distance;
                bullet_number_current += 1;
            }
        }
        
        if (bullet_number_current >= bullet_number_max)
            scene += 1;
        
        timer += 1;
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        bullet_distance -= 3;
        
        with (obj_battle_enemy_attack_axis_turret_circling_geno)
            attack_distance = other.bullet_distance;
        
        if (bullet_distance <= bullet_distance_min)
            scene++;
        
        break;
    
    case 3:
        audio_play_sound(snd_bullet_warning, 1, 0);
        
        with (obj_battle_enemy_attack_axis_turret_circling_geno)
        {
            image_xscale = 1.5;
            image_yscale = 1.5;
            bullet_speed = 0;
            can_track = false;
        }
        
        scene++;
        break;
    
    case 4:
        bullet_distance -= 1;
        cutscene_wait(0.25);
        break;
    
    case 5:
        with (obj_battle_enemy_attack_axis_turret_circling_geno)
        {
            image_speed = 1;
            scene = 1;
        }
        
        scene++;
        break;
    
    case 6:
        if (!instance_exists(obj_battle_enemy_attack_axis_turret_circling_geno))
        {
            attack_count -= 1;
            
            if (attack_count <= 0)
            {
                instance_destroy();
            }
            else
            {
                timer = 0;
                scene = 0;
                bullet_number_current = 0;
                bullet_distance = 100;
                bullet_attack_dir = irandom_range(1, 360);
                bullet_spin_dir = choose(-1, 1);
            }
        }
        
        break;
}
