if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
direction = point_direction(x, y, battle_box.x, battle_box.y);
image_angle = direction;

switch (scene)
{
    case 0:
        if (image_alpha < 0.99)
        {
            image_alpha = lerp(image_alpha, 1, 0.25);
        }
        else
        {
            cutscene_advance();
            image_alpha = 1;
            audio_play_sound(snd_kamehamehacharge, 1, 0);
        }
        
        break;
    
    case 1:
        x = xstart + random_range(-2, 2);
        y = ystart + random_range(-2, 2);
        
        if (cutscene_wait(1))
        {
            image_index = 1;
            laser_active = true;
            audio_play_sound(snd_axis_geno_laser_drill, 1, 1);
        }
        
        break;
    
    case 2:
        move_dir -= move_dir_inc;
        move_dir_inc = lerp(move_dir_inc, move_dir_inc_max, 0.25);
        
        if (move_dir_switch == false)
        {
            if (move_dir_switch_timer > 0)
            {
                move_dir_switch_timer -= 1;
            }
            else
            {
                instance_create_depth(x, y - 50, depth - 1, obj_attack_warning_exclamation_mark);
                move_dir_switch = true;
            }
        }
        else if (!instance_exists(obj_attack_warning_exclamation_mark))
        {
            move_dir_inc_max *= -1;
            move_dir_switch_timer = move_dir_switch_timer_max * random_range(0.5, 1.5);
            move_dir_switch = false;
        }
        
        x = battle_box.x + lengthdir_x(move_dist, move_dir);
        y = battle_box.y + lengthdir_y(move_dist, move_dir);
        break;
}

if (laser_active == true)
{
    laser_x1 = x;
    laser_x2 = x + lengthdir_x(laser_length, direction);
    laser_y1 = y;
    laser_y2 = y + lengthdir_y(laser_length, direction);
    
    if (abs(angle_difference(direction - 180, obj_battle_enemy_attack_axis_shield.direction)) < 45)
    {
        laser_blocked = true;
        laser_length = point_distance(x, y, obj_battle_enemy_attack_axis_shield.x + lengthdir_x(20, obj_battle_enemy_attack_axis_shield.direction), obj_battle_enemy_attack_axis_shield.y + lengthdir_y(20, obj_battle_enemy_attack_axis_shield.direction));
        obj_battlebox_controller_axis.axis_trash_meter = clamp(obj_battlebox_controller_axis.axis_trash_meter + 0.25, 0, 100);
        
        with (obj_battle_enemy_attack_axis_shield)
            shield_offset = shield_offset_min;
    }
    else
    {
        if (obj_heart_battle_fighting_parent.vulnerable == true)
        {
            var damage = (global.enemy_attack_stat - global.player_armor_defense - global.player_armor_modifier_defense - global.player_defense) + 10;
            
            if (damage < 1)
                damage = 1;
            
            audio_play_sound(snd_hurt, 1, 0);
            global.current_hp_self -= damage;
            
            with (obj_heart_battle_fighting_parent)
            {
                vulnerable = false;
                global.hit_self = true;
                alarm[0] = global.invulnerability_self;
            }
        }
        
        laser_blocked = false;
        laser_length = 900;
    }
}

if (impact_frame_current < (impact_frame_max + 1))
    impact_frame_current += impact_frame_speed;
else
    impact_frame_current = 0;

if (laser_frame_current < (laser_frame_max + 1))
    laser_frame_current += laser_frame_speed;
else
    laser_frame_current = 0;

if (instance_exists(obj_attack_warning_exclamation_mark))
{
    obj_attack_warning_exclamation_mark.x = x;
    obj_attack_warning_exclamation_mark.y = y - 50;
}
