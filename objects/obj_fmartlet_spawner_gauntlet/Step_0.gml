if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var heart = obj_heart_battle_fighting_parent;
var martlet_fly_x_start = 840;
var martlet_fly_y_target = 120;
var martlet_fly_y_target_bottom = 460;

switch (scene)
{
    case 0:
        with (obj_martlet_final_base)
        {
            image_angle = 0;
            x = lerp(x, 320, 0.25);
            
            if (image_index >= 8)
            {
                if (vspeed > -60)
                    vspeed -= 15;
            }
            
            if (image_index >= (image_number - 1))
            {
                image_speed = 0;
                image_index = image_number - 1;
            }
            
            if (y < -300)
            {
                vspeed = 0;
                other.scene++;
            }
        }
        
        break;
    
    case 1:
        cutscene_wait(1);
        break;
    
    case 2:
        if (scr_battle_box_resize_midfight(140, 140, 320, 240))
            cutscene_advance();
        
        break;
    
    case 3:
        can_attack = true;
        cutscene_advance();
        break;
    
    case 4:
        break;
    
    case 5:
        if (scr_battle_box_resize_midfight(652, 492, 320, 240))
            cutscene_advance();
        
        break;
    
    case 6:
        with (obj_martlet_final_base)
        {
            hspeed = -14;
            var y_diff = martlet_fly_x_start - 320;
            var y_diff_current = x - 320;
            y = martlet_fly_y_target + (90 * (y_diff_current / y_diff));
            image_angle = -10 + (40 * (y_diff_current / y_diff));
            
            if (image_alpha < 0.5)
                image_alpha += 0.1;
            
            if (image_index >= (image_number - 1))
            {
                image_index = image_number - 1;
                image_speed = 0;
            }
            
            if (x <= 280)
            {
                hspeed = 0;
                other.scene += 1;
                sprite_index = spr_martlet_final_fly_turn;
                image_index = 0;
                image_speed = 1;
            }
        }
        
        break;
    
    case 7:
        with (obj_martlet_final_base)
        {
            if (image_index >= (image_number - 1))
            {
                image_index = image_number - 1;
                image_speed = 0;
            }
            
            if (image_index >= 3)
            {
                image_xscale += 0.01;
                image_yscale = image_xscale;
                
                if (image_xscale < 1)
                {
                    y = martlet_fly_y_target + (((image_xscale - 0.5) / 0.5) * (martlet_fly_y_target_bottom - martlet_fly_y_target));
                    
                    if (y < martlet_fly_y_target_bottom)
                        y += 2;
                }
                else
                {
                    if (!instance_exists(obj_fmartlet_collision_mask_martlet_fly))
                        instance_create_depth(obj_martlet_final_base.x, obj_martlet_final_base.y, -100, obj_fmartlet_collision_mask_martlet_fly);
                    
                    if (image_alpha < 1)
                        image_alpha += 0.1;
                    else
                        depth = -1000;
                    
                    vspeed -= 2;
                    hspeed += (other.martlet_fly_side * 2);
                    image_angle -= (other.martlet_fly_side * 2);
                    
                    if (y < -180)
                    {
                        vspeed = 0;
                        other.scene++;
                    }
                }
            }
            else
            {
                y = lerp(y, martlet_fly_y_target, 0.1);
            }
            
            x = lerp(x, 320, 0.1);
            image_angle = lerp(image_angle, 0, 0.1);
            
            if (abs(x - 320) < 1)
                x = 320;
        }
        
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        instance_destroy(obj_fmartlet_collision_mask_martlet_fly);
        instance_destroy();
        
        with (obj_martlet_final_base)
        {
            martlet_sprites_reset = true;
            y = martlet_y_target;
            x = 320;
            depth = 10;
            hspeed = 0;
        }
        
        break;
}

if (can_attack == true)
{
    if (attack_variant == 0)
    {
        switch (attack_tick)
        {
            case 30:
                var attack_instance = instance_create_depth(battle_box.bbox_right + 40, battle_box.y, -100, obj_martlet_attack_splitting_feather);
                attack_instance.x_target_override = battle_box.bbox_left - 20;
                attack_instance.y_target_override = battle_box.y;
                break;
            
            case 44:
                var attack_instance = instance_create_depth(battle_box.bbox_right + 40, battle_box.bbox_top - 40, -100, obj_martlet_attack_splitting_feather);
                attack_instance.x_target_override = battle_box.x;
                attack_instance.y_target_override = battle_box.y;
                break;
            
            case 58:
                var attack_instance = instance_create_depth(battle_box.bbox_left - 40, battle_box.bbox_top - 40, -100, obj_martlet_attack_splitting_feather);
                attack_instance.x_target_override = heart.x;
                attack_instance.y_target_override = heart.y;
                break;
            
            case 72:
                var attack_instance = instance_create_depth(battle_box.bbox_left - 40, battle_box.bbox_top + 20, -100, obj_martlet_attack_splitting_feather);
                attack_instance.x_target_override = battle_box.bbox_right + 20;
                attack_instance.y_target_override = battle_box.y;
                attack_instance = instance_create_depth(battle_box.bbox_right + 40, battle_box.bbox_top + 20, -100, obj_martlet_attack_splitting_feather);
                attack_instance.x_target_override = battle_box.bbox_left - 20;
                attack_instance.y_target_override = battle_box.y;
                break;
            
            case 80:
                var sound_noloop = false;
                var i = battle_box.bbox_left + 12;
                
                while (i < (battle_box.bbox_right - 4))
                {
                    var feather = instance_create_depth(i, battle_box.bbox_top - 20, -100, obj_fmartlet_feather_straight);
                    feather.direction = 270;
                    
                    if (sound_noloop == false)
                    {
                        feather.can_play_sound = true;
                        sound_noloop = true;
                    }
                    
                    i += 14;
                }
                
                break;
            
            case 100:
            case 170:
                var feather = instance_create_depth(battle_box.bbox_left - 20, battle_box.y, -100, obj_fmartlet_feather_straight);
                feather.direction = point_direction(feather.x, feather.y, heart.x, heart.y);
                feather.can_play_sound = true;
                break;
            
            case 105:
            case 165:
                var feather = instance_create_depth(battle_box.bbox_left - 20, battle_box.bbox_top - 20, -100, obj_fmartlet_feather_straight);
                feather.direction = point_direction(feather.x, feather.y, heart.x, heart.y);
                feather.can_play_sound = true;
                break;
            
            case 110:
            case 160:
                var feather = instance_create_depth(battle_box.x, battle_box.bbox_top - 20, -100, obj_fmartlet_feather_straight);
                feather.direction = point_direction(feather.x, feather.y, heart.x, heart.y);
                feather.can_play_sound = true;
                break;
            
            case 115:
            case 155:
                var feather = instance_create_depth(battle_box.bbox_right + 20, battle_box.bbox_top - 20, -100, obj_fmartlet_feather_straight);
                feather.direction = point_direction(feather.x, feather.y, heart.x, heart.y);
                feather.can_play_sound = true;
                break;
            
            case 120:
            case 150:
                var feather = instance_create_depth(battle_box.bbox_right + 20, battle_box.y, -100, obj_fmartlet_feather_straight);
                feather.direction = point_direction(feather.x, feather.y, heart.x, heart.y);
                feather.can_play_sound = true;
                break;
            
            case 125:
            case 145:
                var feather = instance_create_depth(battle_box.bbox_right + 20, battle_box.bbox_bottom + 20, -100, obj_fmartlet_feather_straight);
                feather.direction = point_direction(feather.x, feather.y, heart.x, heart.y);
                feather.can_play_sound = true;
                break;
            
            case 130:
            case 140:
                var feather = instance_create_depth(battle_box.x, battle_box.bbox_bottom + 20, -100, obj_fmartlet_feather_straight);
                feather.direction = point_direction(feather.x, feather.y, heart.x, heart.y);
                feather.can_play_sound = true;
                break;
            
            case 135:
                var feather = instance_create_depth(battle_box.bbox_left - 20, battle_box.bbox_bottom + 20, -100, obj_fmartlet_feather_straight);
                feather.direction = point_direction(feather.x, feather.y, heart.x, heart.y);
                feather.can_play_sound = true;
                break;
            
            case 190:
                var attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
                attack_instance.attack_delay = 5;
                break;
            
            case 200:
                var attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
                attack_instance.image_xscale = -1;
                attack_instance.attack_delay = 10;
                break;
            
            case 215:
                var attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
                attack_instance.attack_delay = 15;
                break;
            
            case 240:
                with (obj_martlet_final_base)
                {
                    depth = -100;
                    image_alpha = 0;
                    sprite_index = spr_martlet_final_fly_in;
                    image_index = 0;
                    image_speed = 1;
                    x = martlet_fly_x_start;
                    y = martlet_fly_y_target + 90;
                    image_xscale = 0.5;
                    image_yscale = 0.5;
                }
                
                can_attack = false;
                scene = 5;
                exit;
                break;
            
            case 500:
                attack_tick = 99;
                break;
        }
    }
    else if (attack_variant == 1)
    {
        switch (attack_tick)
        {
            case 30:
                if (!instance_exists(obj_battle_enemy_attack_martlet_ff_2_final_checker))
                    instance_create_depth(320, 320, -100, obj_battle_enemy_attack_martlet_ff_2_final_checker);
                
                break;
            
            case 130:
            case 140:
            case 150:
            case 160:
            case 170:
                instance_create_depth(random_range(battle_box.bbox_left, battle_box.bbox_right), random_range(battle_box.bbox_top - 20, battle_box.bbox_top - 50), -100, obj_battle_enemy_attack_martlet_feather_fall_feather_final);
                break;
                break;
            
            case 210:
            case 240:
                var attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
                attack_instance.attack_delay = 3;
                break;
            
            case 225:
                var attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
                attack_instance.image_xscale = -1;
                attack_instance.attack_delay = 3;
                break;
            
            case 255:
                var attack_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon);
                attack_instance.attack_delay = 75;
                break;
            
            case 265:
                var sound_noloop = false;
                var i = battle_box.bbox_left + 12;
                
                while (i < (battle_box.bbox_right - 4))
                {
                    var feather = instance_create_depth(i, battle_box.bbox_top - 20, -100, obj_fmartlet_feather_straight);
                    feather.direction = 270;
                    
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
                var i = battle_box.bbox_top + 12;
                
                while (i < battle_box.y)
                {
                    var feather = instance_create_depth(battle_box.bbox_left - 20, i, -100, obj_fmartlet_feather_straight);
                    feather.direction = 0;
                    
                    if (sound_noloop == false)
                    {
                        feather.can_play_sound = true;
                        sound_noloop = true;
                    }
                    
                    i += 11.666666666666666;
                }
                
                break;
            
            case 295:
                var sound_noloop = false;
                var i = battle_box.y;
                
                while (i < (battle_box.bbox_bottom - 4))
                {
                    var feather = instance_create_depth(battle_box.bbox_right + 20, i, -100, obj_fmartlet_feather_straight);
                    feather.direction = 180;
                    
                    if (sound_noloop == false)
                    {
                        feather.can_play_sound = true;
                        sound_noloop = true;
                    }
                    
                    i += 11.666666666666666;
                }
                
                break;
            
            case 360:
                with (obj_martlet_final_base)
                {
                    depth = -100;
                    image_alpha = 0;
                    sprite_index = spr_martlet_final_fly_in;
                    image_index = 0;
                    image_speed = 1;
                    x = martlet_fly_x_start;
                    y = martlet_fly_y_target + 90;
                    image_xscale = 0.5;
                    image_yscale = 0.5;
                }
                
                can_attack = false;
                scene = 5;
                exit;
                break;
        }
    }
    
    attack_tick += 1;
}
