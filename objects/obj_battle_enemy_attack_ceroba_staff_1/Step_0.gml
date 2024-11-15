var battle_box, soul, xtarget, ytarget, tardist, tardir, orange, xx, spray_spawner;

if (live_call())
    return global.live_result;

battle_box = 3154;
soul = 2979;

if (is_active == false)
    exit;

switch (scene)
{
    case 0:
        xtarget = xstart + lengthdir_x(40, 90 + (45 * image_xscale));
        ytarget = ystart + lengthdir_y(40, 90 + (45 * image_xscale));
        x = lerp(x, xtarget, 0.15);
        y = lerp(y, ytarget, 0.15);
        
        if (abs(x - xtarget) < 0.5 && abs(y - ytarget) < 0.1)
        {
            xstart = x;
            ystart = y;
            scene++;
        }
        
        break;
    
    case 1:
        if (cutscene_wait(0.15))
            audio_play_sound(snd_ceroba_staff_lock, 1, 0);
        
        break;
    
    case 2:
        tardist = point_distance(xstart, ystart, battle_box.x, battle_box.y);
        tardir = point_direction(xstart, ystart, battle_box.x, battle_box.y);
        xtarget = xstart + lengthdir_x(tardist, tardir);
        ytarget = ystart + lengthdir_y(tardist, tardir);
        x = lerp(x, xtarget, 0.3);
        y = lerp(y, ytarget, 0.3);
        
        if (abs(x - xtarget) < 0.1 && abs(y - ytarget) < 0.1)
            scene++;
        
        break;
    
    case 3:
        sprite_index = -4;
        orange = instance_create_depth(x, y, depth, obj_battle_enemy_attack_ceroba_staff_orange);
        orange.image_xscale = image_xscale;
        orange.spawner = id;
        audio_play_sound(snd_undertale_flash, 1, 0);
        scene++;
        break;
    
    case 4:
        cutscene_wait(0.15);
        break;
    
    case 5:
        image_angle += (rot_speed * image_xscale);
        
        if (rot_speed < 5)
            rot_speed = lerp(rot_speed, 15, 0.05);
        
        cutscene_wait(obj_battle_enemy_attack_ceroba_phase_1_staff.rot_time);
        break;
    
    case 6:
        image_angle += (rot_speed * image_xscale);
        
        if (rot_speed > 0.1)
            rot_speed = lerp(rot_speed, 0, 0.15);
        else
            scene++;
        
        break;
    
    case 7:
        sprite_index = spr_ceroba_staff_attack;
        image_index = 2;
        image_speed = 1;
        instance_destroy(obj_battle_enemy_attack_ceroba_staff_orange);
        audio_play_sound(snd_undertale_flash, 1, 0);
        scene++;
        break;
    
    case 8:
        if (image_index >= (image_number - 1))
        {
            image_index = image_number - 1;
            image_speed = 0;
            scene++;
        }
        
        break;
    
    case 9:
        if (image_xscale == -1)
        {
            scene++;
        }
        else
        {
            xx = battle_box.x - 160;
            
            if (obj_heart_battle_fighting_parent.x < battle_box.x)
                xx = battle_box.x + 160;
            
            spray_spawner = instance_create(xx, soul.y, obj_battle_enemy_attack_ceroba_flower_spray_spawner_pacifist);
            spray_spawner.bullet_number[0] = 2;
            spray_spawner.bullet_number[1] = 3;
            spray_spawner.bullet_speed[0] = 3;
            spray_spawner.target_x = soul.x;
            spray_spawner.target_y = soul.y;
            scene++;
        }
        
        break;
    
    case 10:
        if (!instance_exists(obj_battle_enemy_attack_ceroba_flower_spray_spawner_pacifist))
            cutscene_wait(1.5);
        
        break;
    
    case 11:
        instance_destroy(obj_battle_enemy_attack_ceroba_phase_1_staff);
        break;
}
