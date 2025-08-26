if (live_call())
    return global.live_result;

if (image_alpha < 0.99)
    image_alpha = lerp(image_alpha, 1, 0.2);

switch (scene)
{
    case 0:
        if (x < 319)
        {
            x = lerp(x, 320, 0.3);
        }
        else
        {
            x = 320;
            cutscene_advance();
        }
        
        break;
    
    case 1:
        var charge_pos = ystart - 30;
        
        if (y > (charge_pos + 0.01))
            y = lerp(y, charge_pos, 0.5);
        else
            cutscene_advance();
        
        var charge_percentage = (ystart - y) / (charge_pos - ystart);
        image_angle = -180 * charge_percentage;
        break;
    
    case 2:
        x = 320;
        x += irandom_range(-2, 2);
        
        if (spawn_timer > 0)
        {
            spawn_timer -= 1;
        }
        else
        {
            var new_trash = instance_create_depth((x - (spawn_offset_x_max * 0.5)) + (spawn_number_current * spawn_offset_x_inc), y + 15, depth + 1, obj_battle_enemy_attack_jandroid_garbage);
            
            if (irandom(pseudo_random) == 0 && green_spawn_noloop == false)
            {
                var new_soap = instance_create_depth(new_trash.x, new_trash.y, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_soap_collider);
                new_soap.white_id = new_trash;
                new_trash.sprite_index = -4;
                green_spawn_noloop = true;
            }
            
            if ((spawn_number_current + spawn_number_current_dir) > spawn_number || (spawn_number_current + spawn_number_current_dir) < 0)
                spawn_number_current_dir *= -1;
            
            spawn_number_current += spawn_number_current_dir;
            spawn_timer = spawn_timer_max;
            
            if (disc_count > 0)
            {
                disc_count--;
                
                if (disc_count == 0)
                {
                    var disc = instance_create_depth(x, y, depth + 1, obj_battle_enemy_attack_goosic_disk);
                    disc.alarm[0] = 999999999;
                    disc.alarm[1] = 999999999;
                    disc.image_alpha = 1;
                    disc.scene = -1;
                    disc.vsp = 10;
                    disc.disc_yoffset = 60;
                    disc_count = -1;
                }
            }
        }
        
        break;
    
    case 4:
        x = 320 + irandom_range(-1, 1);
        var charge_pos = ystart + 5;
        
        if (y < (charge_pos - 0.05))
            y = lerp(y, charge_pos, 0.4);
        else
            scene++;
        
        break;
    
    case 5:
        x = 320;
        cutscene_wait(0.25);
        break;
    
    case 6:
        var box = obj_dialogue_box_battle_transformation_any;
        var new_trash = instance_create_depth(box.x - 120, box.bbox_top - 30, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_jandroid_garbage_can);
        
        if (green_spawn_noloop == false)
        {
            var new_soap = instance_create_depth(new_trash.x, new_trash.y, obj_heart_battle_fighting_parent.depth - 2, obj_battle_enemy_attack_jandroid_soap_collider);
            new_soap.white_id = new_trash;
            new_trash.sprite_index = -4;
            green_spawn_noloop = true;
        }
        
        cutscene_advance();
        break;
    
    case 7:
        if (x < 439.9)
        {
            x = lerp(x, 440, 0.3);
        }
        else
        {
            x = 440;
            instance_destroy();
        }
        
        image_alpha = (440 - x) / 120;
        break;
}

pseudo_random = clamp(pseudo_random - 1, 0, 999);
