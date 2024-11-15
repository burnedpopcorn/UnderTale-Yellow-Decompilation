var fs_temp;

if (live_call())
    return global.live_result;

if (state == 0)
{
    if (image_alpha < 1)
    {
        image_alpha += 0.1;
        
        if (image_alpha > 1)
            image_alpha = 1;
    }
    
    if (image_alpha == 1 && floor(obj_martlet_final_base.image_index) >= 3 && floor(obj_martlet_final_base.image_index) <= 4 && no_loop_alarm_fading_in == false)
    {
        switch (sprite_index)
        {
            case spr_battle_enemy_attack_martlet_wing_gust_junk_ball:
            case spr_battle_enemy_attack_martlet_wing_gust_junk_radio:
                alarm[0] = 8;
                break;
            
            case spr_battle_enemy_attack_martlet_wing_gust_junk_saw:
            case spr_battle_enemy_attack_martlet_wing_gust_junk_plank:
                alarm[0] = 15;
                break;
            
            default:
                alarm[0] = 2;
        }
        
        no_loop_alarm_fading_in = true;
    }
}

if (state == 1)
{
    if (fall_speed < fall_speed_max)
        fall_speed += 1;
    
    fs_temp = fall_speed;
    
    if ((bbox_bottom + fs_temp) >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
    {
        while ((bbox_bottom + sign(fs_temp)) < (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
            y += sign(fs_temp);
        
        fs_temp = 0;
        state = 2;
        
        switch (sound_type)
        {
            case 1:
                audio_play_sound(snd_mart_impact_1, 20, 0);
                break;
            
            case 2:
                audio_play_sound(snd_mart_impact_2, 20, 0);
                break;
            
            case 3:
                audio_play_sound(snd_mart_impact_3, 20, 0);
                break;
            
            default:
                audio_play_sound(snd_mart_impact_2, 20, 0);
        }
    }
    
    y += fs_temp;
}

if (state == 2)
{
    if (sprite_index == spr_battle_enemy_attack_martlet_wing_gust_junk_can)
    {
        if (landing_init == false)
        {
            jump_speed = -12;
            grav = 2;
            angle_speed_sign = irandom_range(0, 1);
            
            if (angle_speed_sign == 0)
                angle_speed_sign = -1;
            
            move_speed = 4 * angle_speed_sign;
            angle_speed = 4 * (90 / (sprite_height / 2)) * -angle_speed_sign;
            landing_init = true;
        }
        
        y += jump_speed;
        jump_speed += grav;
        x += move_speed;
        image_angle += angle_speed;
        
        if ((y + (sprite_width / 2)) > __view_get(e__VW.HView, 0))
            instance_destroy();
    }
    else if (sprite_index == spr_battle_enemy_attack_martlet_wing_gust_junk_ball)
    {
        if (landing_init == false)
        {
            if (landing_count == 0)
            {
                jump_speed = -8;
                grav = 2;
                rolling_speed_sign = irandom_range(0, 1);
                
                if (rolling_speed_sign == 0)
                    rolling_speed_sign = -1;
                
                rolling_speed = 4 * rolling_speed_sign;
                rolling_speed_angle = (90 / (sprite_width / 2)) * -rolling_speed;
            }
            else if (landing_count == 1)
            {
                jump_speed = -4;
            }
            
            landing_count += 1;
            landing_init = true;
        }
        
        if (sign(jump_speed) == 1 && (y + (sprite_height / 2) + jump_speed) >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4) && x >= obj_dialogue_box_battle_transformation_any.bbox_left && x <= obj_dialogue_box_battle_transformation_any.bbox_right)
        {
            while ((y + (sprite_height / 2) + sign(jump_speed)) < (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
                y += sign(jump_speed);
            
            jump_speed = 0;
            
            if (landing_count < 2)
                landing_init = false;
        }
        
        y += jump_speed;
        jump_speed += grav;
        x += rolling_speed;
        image_angle += rolling_speed_angle;
        
        if ((y + (sprite_height / 2)) > __view_get(e__VW.HView, 0))
            instance_destroy();
    }
    else if (sprite_index == spr_battle_enemy_attack_martlet_wing_gust_junk_radio)
    {
        if (landing_init == false)
        {
            jump_speed = -10;
            grav = 2;
            x_default = x;
            y_default = y;
            shake_x = 1;
            shake_y = 1;
            angle_speed_sign = irandom_range(0, 1);
            
            if (angle_speed_sign == 0)
                angle_speed_sign = -1;
            
            move_speed = 4 * angle_speed_sign;
            angle_speed = 2 * -angle_speed_sign;
            landing_init = true;
        }
        
        y_default += jump_speed;
        jump_speed += grav;
        x_default += move_speed;
        image_angle += angle_speed;
        x = x_default + (2 * irandom_range(-shake_x, shake_x));
        y = y_default + (2 * irandom_range(-shake_y, shake_y));
        
        if ((y + (sprite_width / 2)) > __view_get(e__VW.HView, 0))
            instance_destroy();
    }
    else if (sprite_index == spr_battle_enemy_attack_martlet_wing_gust_junk_globe)
    {
        if (landing_init == false)
        {
            jump_speed = -8;
            grav = 2;
            angle_speed_sign = irandom_range(0, 1);
            
            if (angle_speed_sign == 0)
                angle_speed_sign = -1;
            
            move_speed = 4 * angle_speed_sign;
            angle_speed = 2 * -angle_speed_sign;
            landing_init = true;
        }
        
        y += jump_speed;
        jump_speed += grav;
        x += move_speed;
        image_angle += angle_speed;
        
        if ((y + (sprite_width / 2)) > __view_get(e__VW.HView, 0))
            instance_destroy();
    }
    else if (sprite_index == spr_battle_enemy_attack_martlet_wing_gust_junk_shoe || sprite_index == spr_battle_enemy_attack_martlet_wing_gust_junk_mug || sprite_index == spr_battle_enemy_attack_martlet_wing_gust_junk_thingy || sprite_index == spr_battle_enemy_attack_martlet_wing_gust_junk_glass || sprite_index == spr_battle_enemy_attack_martlet_wing_gust_junk_saw || sprite_index == spr_battle_enemy_attack_martlet_wing_gust_junk_idk || sprite_index == spr_battle_enemy_attack_martlet_wing_gust_junk_plank)
    {
        if (landing_init == false)
        {
            jump_speed = -10;
            grav = 2;
            angle_speed_sign = irandom_range(0, 1);
            
            if (angle_speed_sign == 0)
                angle_speed_sign = -1;
            
            move_speed = 4 * angle_speed_sign;
            angle_speed = 2 * -angle_speed_sign;
            landing_init = true;
        }
        
        y += jump_speed;
        jump_speed += grav;
        x += move_speed;
        image_angle += angle_speed;
        
        if ((y + (sprite_width / 2)) > __view_get(e__VW.HView, 0))
            instance_destroy();
    }
    else
    {
        can_fade_out = true;
    }
    
    if (image_alpha > 0 && can_fade_out == true)
    {
        image_alpha -= 0.1;
        
        if (image_alpha < 0)
            image_alpha = 0;
        
        if (image_alpha == 0)
            instance_destroy();
    }
}
