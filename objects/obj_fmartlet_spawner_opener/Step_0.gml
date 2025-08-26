if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (attack_tick)
{
    case 30:
        instance_create_depth(battle_box.bbox_left + 20, battle_box.bbox_top - 60, -100, obj_battle_enemy_attack_martlet_feather_fall_feather_final);
        break;
    
    case 60:
        instance_create_depth(battle_box.x, battle_box.bbox_top - 50, -100, obj_battle_enemy_attack_martlet_feather_fall_feather_final);
        break;
    
    case 90:
        instance_create_depth(battle_box.bbox_right - 20, battle_box.bbox_top - 50, -100, obj_battle_enemy_attack_martlet_feather_fall_feather_final);
        break;
    
    case 120:
        instance_create_depth(battle_box.bbox_right + 10, battle_box.bbox_top - 20, -100, obj_battle_enemy_attack_martlet_feather_fall_feather_final);
        break;
    
    case 130:
        instance_create_depth(battle_box.bbox_right, battle_box.bbox_top - 40, -100, obj_battle_enemy_attack_martlet_feather_fall_feather_final);
        break;
    
    case 140:
        instance_create_depth(battle_box.bbox_right - 10, battle_box.bbox_top - 60, -100, obj_battle_enemy_attack_martlet_feather_fall_feather_final);
        break;
    
    case 160:
        instance_create_depth(battle_box.bbox_left - 10, battle_box.bbox_top - 60, -100, obj_battle_enemy_attack_martlet_feather_fall_feather_final);
        break;
    
    case 170:
        instance_create_depth(battle_box.bbox_left, battle_box.bbox_top - 80, -100, obj_battle_enemy_attack_martlet_feather_fall_feather_final);
        break;
    
    case 180:
        instance_create_depth(battle_box.bbox_left + 10, battle_box.bbox_top - 100, -100, obj_battle_enemy_attack_martlet_feather_fall_feather_final);
        break;
    
    case 210:
        var sound_noloop = false;
        var i = battle_box.bbox_left + 12;
        
        while (i < (battle_box.bbox_left + 4 + 140))
        {
            var feather = instance_create_depth(i, battle_box.bbox_top - 20, -100, obj_fmartlet_feather_straight);
            feather.direction = 270;
            
            if (sound_noloop == false)
            {
                feather.can_play_sound = true;
                sound_noloop = true;
            }
            
            i += 28;
        }
        
        break;
    
    case 245:
        var sound_noloop = false;
        var i = battle_box.bbox_top + 12;
        
        while (i < (battle_box.bbox_top + 4 + 70))
        {
            var feather = instance_create_depth(battle_box.bbox_left - 20, i, -100, obj_fmartlet_feather_straight);
            feather.direction = 0;
            
            if (sound_noloop == false)
            {
                feather.can_play_sound = true;
                sound_noloop = true;
            }
            
            i += 14;
        }
        
        break;
    
    case 250:
        var sound_noloop = false;
        var i = battle_box.bbox_top + 4 + 70;
        
        while (i < (battle_box.bbox_top + 4 + 140))
        {
            var feather = instance_create_depth(battle_box.bbox_right + 20, i, -100, obj_fmartlet_feather_straight);
            feather.direction = 180;
            
            if (sound_noloop == false)
            {
                feather.can_play_sound = true;
                sound_noloop = true;
            }
            
            i += 14;
        }
        
        break;
    
    case 280:
        var sound_noloop = false;
        
        for (var i = 0; i < 70; i += 14)
        {
            var feather = instance_create_depth(battle_box.bbox_right + 20 + lengthdir_x(i, 45), battle_box.bbox_bottom + lengthdir_y(i, 45), -100, obj_fmartlet_feather_straight);
            feather.direction = 135;
            
            if (sound_noloop == false)
            {
                feather.can_play_sound = true;
                sound_noloop = true;
            }
        }
        
        break;
    
    case 285:
        var sound_noloop = false;
        
        for (var i = 0; i < 70; i += 14)
        {
            var feather = instance_create_depth((battle_box.bbox_left - 20) + lengthdir_x(i, 225), (battle_box.bbox_top - 20) + lengthdir_y(i, 225), -100, obj_fmartlet_feather_straight);
            feather.direction = 315;
            
            if (sound_noloop == false)
            {
                feather.can_play_sound = true;
                sound_noloop = true;
            }
        }
        
        break;
    
    case 320:
        scr_battle_box_resize_midfight(82, 160, 320, 300);
        break;
    
    case 350:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        break;
    
    case 370:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        break;
    
    case 390:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        break;
    
    case 420:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        
        with (obj_martlet_attack_block)
            vspeed = 6;
        
        with (obj_martlet_attack_block_hurt)
            vspeed = 6;
        
        break;
    
    case 440:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        
        with (obj_martlet_attack_block)
            vspeed = 6;
        
        with (obj_martlet_attack_block_hurt)
            vspeed = 6;
        
        break;
    
    case 460:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_block);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_block_hurt);
        
        with (obj_martlet_attack_block)
            vspeed = 6;
        
        with (obj_martlet_attack_block_hurt)
            vspeed = 6;
        
        break;
    
    case 490:
        instance_create_depth(battle_box.bbox_left + 5, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 29, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.bbox_left + 53, battle_box.bbox_top - 24, -100, obj_martlet_attack_glass);
        glass_speed_original = 5;
        
        with (obj_martlet_attack_glass)
            vspeed = other.glass_speed_original;
        
        _speed_perc = 1;
        break;
    
    case 500:
        switch (scene)
        {
            case -1:
                if (abs(obj_heart_battle_fighting_parent.y - obj_martlet_attack_glass.y) < 80)
                    scene++;
                
                break;
            
            case 0:
                if (!instance_exists(obj_martlet_final_slowdown))
                    instance_create_depth(0, 0, obj_martlet_final_base.depth - 10, obj_martlet_final_slowdown);
                
                var speed_perc = _speed_perc;
                
                with (obj_martlet_attack_glass)
                    vspeed = other.glass_speed_original * speed_perc;
                
                with (obj_martlet_final_slowdown)
                    starlo_take_aim_overlay_alpha = 1 - speed_perc;
                
                with (obj_martlet_final_base)
                    speed_multiplier = speed_perc;
                
                if (_speed_perc <= 0)
                {
                    obj_heart_battle_fighting_parent.moveable = false;
                    cutscene_advance();
                }
                else
                {
                    _speed_perc -= 0.1;
                }
                
                break;
            
            case 1:
                cutscene_wait(0.5);
                break;
            
            case 2:
                hint_draw = true;
                
                if (keyboard_multicheck_pressed(vk_anykey))
                {
                    var walk_speed = global.speed_self + (1 * sign(global.current_sp_self));
                    var move_x = 0;
                    var move_y = -1;
                    battle_box = obj_dialogue_box_battle_transformation_any;
                    
                    with (obj_heart_battle_fighting_yellow_final)
                    {
                        moveable = true;
                        is_dashing = true;
                        can_cancel_dash = false;
                        dash_delay = dash_delay_max;
                        move_y_dash = move_y * 2;
                        move_x_dash = 0;
                    }
                    
                    hint_draw = false;
                    scene++;
                }
                
                break;
            
            case 3:
                var speed_perc = _speed_perc;
                
                with (obj_martlet_attack_glass)
                    vspeed = other.glass_speed_original * speed_perc;
                
                with (obj_martlet_final_slowdown)
                    starlo_take_aim_overlay_alpha = 1 - speed_perc;
                
                with (obj_martlet_final_base)
                    speed_multiplier = speed_perc;
                
                if (_speed_perc >= 1)
                {
                    _speed_perc = 1;
                    obj_martlet_final_base.speed_multiplier = 1;
                    attack_tick += 1;
                    cutscene_advance();
                }
                else
                {
                    _speed_perc += 0.1;
                }
                
                break;
        }
        
        break;
    
    case 560:
        instance_destroy();
        break;
}

if (attack_tick != 500)
    attack_tick += 1;

if (global.image_alpha_enemy_attacking >= 0)
{
    if (bbox_overlay_alpha > 0)
        bbox_overlay_alpha -= 0.1;
}

if (hint_draw == true)
{
    if (hint_alpha < 1)
        hint_alpha += 0.1;
}
else
{
    hint_alpha = 0;
}
