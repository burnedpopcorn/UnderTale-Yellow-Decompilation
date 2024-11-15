var battle_box, spawner;

if (live_call())
    return global.live_result;

battle_box = 3154;

switch (scene)
{
    case 1:
        cutscene_wait(1);
        break;
    
    case 2:
        with (obj_battle_enemy_attack_bullet_spawner)
        {
            instance_destroy();
            
            with (instance_create_depth(x, y, -100, obj_battle_enemy_attack_bullet_rotating))
            {
                bullet_dir = point_direction(battle_box.x, battle_box.y, x, y);
                bullet_dist = point_distance(battle_box.x, battle_box.y, x, y);
                direction = bullet_dir + 90;
            }
        }
        
        audio_play_sound(snd_ceroba_charge, 1, 0);
        scene++;
        break;
    
    case 3:
        if (spin_speed < 10)
            spin_speed += 0.25;
        
        with (obj_battle_enemy_attack_bullet_rotating)
        {
            bullet_dir -= other.spin_speed;
            direction = bullet_dir + 90;
        }
        
        cutscene_wait(2.5);
        break;
    
    case 4:
        with (obj_battle_enemy_attack_bullet_rotating)
        {
            bullet_dir -= other.spin_speed;
            direction = bullet_dir + 90;
            other.spin_speed = lerp(other.spin_speed, 0, 0.05);
            
            if (other.spin_speed < 1)
            {
                spawner = instance_create_depth(x, y, -100, obj_battle_enemy_attack_bullet_spawner);
                spawner.sprite_index = spr_ceroba_attack_bullet_loop;
                instance_destroy();
                other.scene = 5;
            }
        }
        
        break;
    
    case 5:
        cutscene_wait(0.2);
        break;
    
    case 6:
        with (obj_battle_enemy_attack_bullet_spawner)
        {
            direction = point_direction(x, y, battle_box.x, battle_box.y);
            speed = -10;
        }
        
        scene++;
        break;
    
    case 7:
        with (obj_battle_enemy_attack_bullet_spawner)
        {
            direction = point_direction(x, y, battle_box.x, battle_box.y);
            speed = lerp(speed, 0, 0.15);
            
            if (abs(speed) <= 0.1)
                other.scene = 8;
        }
        
        break;
    
    case 8:
        with (obj_battle_enemy_attack_bullet_spawner)
        {
            instance_destroy();
            
            with (instance_create_depth(x, y, -100, obj_battle_enemy_attack_bullet_rotating))
            {
                direction = point_direction(x, y, battle_box.x, battle_box.y);
                speed = 3;
            }
        }
        
        audio_play_sound(snd_ceroba_super_bullet_drop, 1, 0);
        scene++;
        break;
    
    case 9:
        with (obj_battle_enemy_attack_bullet_rotating)
        {
            if (speed < 15)
                speed += 3;
            
            if (point_distance(x, y, battle_box.x, battle_box.y) < 10)
                instance_destroy();
        }
        
        if (!instance_exists(obj_battle_enemy_attack_bullet_rotating))
        {
            instance_create_depth(battle_box.x, battle_box.y, -200, obj_battle_enemy_attack_rotating_bullet_explode);
            scene++;
        }
        
        break;
    
    case 10:
        if (instance_exists(obj_battle_enemy_attack_rotating_bullet_explode))
            scene++;
        
        break;
    
    case 11:
        if (!instance_exists(obj_battle_enemy_attack_ceroba_diamond))
            cutscene_wait(2.5);
        
        break;
    
    case 12:
        instance_create_depth(soul.x, soul.y, -100, obj_attack_diamond_warning);
        scene = 13;
        break;
    
    case 13:
        if (!instance_exists(obj_battle_enemy_attack_bullet_residue))
            scene = 14;
        
        break;
    
    case 14:
        instance_destroy();
        break;
}
