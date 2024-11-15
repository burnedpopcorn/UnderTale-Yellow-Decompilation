var spawn_delay, start_delay, fire_count, fire_distance, moving_time, pause_time, i, xx, yy;

if (live_call())
    return global.live_result;

if (instance_exists(obj_battle_enemy_attack_ceroba_phase_2_mask) && obj_battle_enemy_attack_ceroba_phase_2_mask.attack_stop == true)
    scene = 8;

spawn_delay = 0;
start_delay = 0.5;
fire_count = 7;
fire_distance = 60;
moving_time = 1;
pause_time = 0.75;

if (global.hotland_flag[2] == 2)
{
    pause_time = 0.5;
    fire_distance = 75;
}

if (global.hotland_flag[2] == 3)
{
    pause_time = 0.2;
    fire_count = 9;
    fire_distance = 75;
}

scr_enemy_attack_bullet_hit();

if (bullet_destroy_self)
{
    instance_destroy();
    instance_create_depth(x, y, depth, obj_ceroba_attack_fire_mask_destroy);
}

switch (scene)
{
    case 0:
        image_alpha += 0.1;
        
        if (global.hotland_flag[2] >= 2)
            image_alpha += 0.15;
        
        if (image_alpha >= 1)
        {
            image_alpha = 1;
            scene++;
        }
        
        break;
    
    case 1:
        cutscene_wait(spawn_delay);
        break;
    
    case 2:
        i = 0;
        
        while (i < 360)
        {
            xx = x + lengthdir_x(fire_distance, i);
            yy = y + lengthdir_y(fire_distance, i);
            fireball_array[fireball_current] = instance_create_depth(xx, yy, -100, obj_ceroba_attack_fireball);
            fireball_array[fireball_current].alarm[0] = 1 + (fireball_current * 3);
            
            if (global.hotland_flag[2] >= 2)
                fireball_array[fireball_current].alarm[0] = 1 + (fireball_current * 1);
            
            fireball_dir[fireball_current] = i;
            fireball_current += 1;
            i += (360 / fire_count);
        }
        
        scene++;
        break;
    
    case 3:
        for (i = 0; i < array_length(fireball_array); i++)
        {
            if (instance_exists(fireball_array[i]))
            {
                if (fireball_array[i].image_alpha < 1)
                    exit;
            }
        }
        
        cutscene_wait(start_delay);
        break;
    
    case 4:
        x_target = obj_heart_battle_fighting_parent.x;
        y_target = obj_heart_battle_fighting_parent.y;
        direction = point_direction(x, y, x_target, y_target);
        scene++;
        break;
    
    case 5:
        multiplier = lerp(multiplier, 1, 0.15);
        cutscene_wait(moving_time);
        break;
    
    case 6:
        multiplier = lerp(multiplier, 0, 0.15);
        cutscene_wait(pause_time);
        break;
    
    case 7:
        if (attack_count > 0)
        {
            scene = 4;
            attack_count -= 1;
        }
        else
        {
            scene++;
        }
        
        break;
    
    case 8:
        image_alpha -= 0.2;
        
        for (i = 0; i < array_length(fireball_array); i++)
        {
            if (instance_exists(fireball_array[i]))
                fireball_array[i].image_alpha = image_alpha;
        }
        
        if (image_alpha < 0.2)
        {
            instance_destroy();
            exit;
        }
        
        break;
}

if (scene >= 4)
{
    for (i = 0; i < array_length(fireball_array); i++)
    {
        if (instance_exists(fireball_array[i]))
        {
            xx = x + lengthdir_x(fire_distance, fireball_dir[i] + dir_offset);
            yy = y + lengthdir_y(fire_distance, fireball_dir[i] + dir_offset);
            fireball_array[i].x = xx;
            fireball_array[i].y = yy;
        }
    }
}

speed = move_speed_max * multiplier;
spin_speed = spin_speed_max * multiplier;
dir_offset -= spin_speed;
