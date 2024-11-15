var shield_health, fill_percentage_inc, collider_id, execute_destroy, default_alpha;

if (live_call())
    return global.live_result;

shield_health = 80;

switch (global.hotland_flag[2])
{
    case 2:
        shield_health = 90;
        break;
    
    case 3:
        shield_health = 100;
        break;
}

switch (scene)
{
    case -1:
        scene = 0;
        break;
    
    case 0:
        if (global.enemy_attack == "Ceroba Special Attack")
        {
            scene = -1;
            exit;
        }
        
        fill_percentage_inc = 1 / shield_health;
        collider_id = instance_place(x, y, obj_heart_yellow_shot);
        
        if (collider_id != -4)
        {
            audio_play_sound(snd_ceroba_shield_impact, 1, 0);
            instance_create_depth(collider_id.x, collider_id.y - collider_id.sprite_height, -999, obj_heart_yellow_shot_destroy);
            hit_show_timer = 30;
            bullet_hit_draw_timer = 5;
            
            if (fill_percentage < 1)
            {
                if (collider_id.object_index == obj_heart_yellow_shot_big)
                    fill_percentage += (fill_percentage_inc * 3);
                else
                    fill_percentage += fill_percentage_inc;
            }
            
            instance_destroy(collider_id);
        }
        
        if (variable_instance_exists(id, "bullet_hit_draw_timer"))
        {
            if (bullet_hit_draw_timer > 0)
                bullet_hit_draw_timer -= 1;
        }
        
        if (global.enemy_attacking)
            fill_percentage_current = lerp(fill_percentage_current, fill_percentage, 0.15);
        
        if (fill_percentage_current >= 0.99)
        {
            fill_percentage_current = 1;
            scene += 1;
            
            if (instance_exists(obj_battle_enemy_attack_ceroba_phase_2_attack_spawner))
            {
                with (obj_battle_enemy_attack_ceroba_phase_2_attack_spawner)
                {
                    alarm[0] = -1;
                    alarm[1] = -1;
                    event_user(0);
                }
            }
            else
            {
            }
        }
        
        break;
    
    case 1:
        image_alpha = 1;
        diamond_effect_alpha = 1;
        bullet_hit_draw_timer = 0;
        image_index = 0;
        image_speed = 1;
        scene++;
        break;
    
    case 2:
        diamond_effect_alpha -= 0.02;
        diamond_effect_scale += 0.1;
        
        if (diamond_effect_alpha <= 0)
            scene++;
        
        break;
    
    case 3:
        cutscene_wait(0.4);
        break;
    
    case 4:
        with (obj_heart_battle_fighting_yellow_final)
        {
            is_charging = false;
            moveable = false;
        }
        
        with (obj_heart_yellow_shot)
            instance_destroy();
        
        cutscene_wait(0.1);
        break;
    
    case 5:
        with (obj_ceroba_phase_2_bell)
            fade_in = 1;
        
        scene++;
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_advance();
        break;
    
    case 8:
        if (instance_exists(obj_battle_enemy_attack_ceroba_phase_2_attack_spawner))
        {
            with (obj_battle_enemy_attack_ceroba_phase_2_attack_spawner)
                instance_destroy();
        }
        else
        {
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
        }
        
        if (global.enemy_attacking)
            obj_heart_battle_menu.image_alpha = 0;
        
        image_speed = 1;
        scene++;
        break;
    
    case 9:
        execute_destroy = true;
        
        with (obj_ceroba_phase_2_bell)
        {
            if (bullet_destroy_self == false)
                execute_destroy = false;
        }
        
        if (execute_destroy == true)
        {
            if (instance_exists(obj_battle_enemy_attack_ceroba_phase_2_attack_spawner))
            {
                obj_battle_enemy_attack_ceroba_phase_2_attack_spawner.alarm[0] = -1;
                obj_battle_enemy_attack_ceroba_phase_2_attack_spawner.alarm[1] = -1;
            }
            
            instance_create_depth(x, y, depth, obj_ceroba_phase_2_shield_destroy);
            instance_destroy();
        }
        
        break;
}

default_alpha = 0;

if (global.enemy_attacking == true && global.enemy_attack != "Ceroba Special Attack")
    default_alpha = 0.25;

if (hit_show_timer > 0)
{
    hit_show_timer--;
    image_alpha = lerp(image_alpha, 1, 0.15);
}
else
{
    image_alpha = lerp(image_alpha, default_alpha, 0.15);
}
