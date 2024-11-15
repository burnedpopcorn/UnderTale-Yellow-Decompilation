var enemy_count, enemy_dead, enemy_spared;

if (transformed == false)
{
    enemy_count = global.enemy_count;
    enemy_dead = global.enemy_dead;
    enemy_spared = global.enemy_spared;
    
    if (enemy_dead == false && enemy_spared == false)
        image_alpha = global.image_alpha_enemy_attacking;
    
    if (enemy_dead == true)
    {
        x = starting_point_x;
        y = starting_point_y - max_rise;
        image_angle = 0;
        instance_create(starting_point_x, starting_point_y - max_rise, obj_crispy_scroll_dead);
        instance_destroy();
        exit;
        image_alpha = 0.5;
    }
    else if (enemy_spared == true)
    {
        sprite_index = spr_crispy_scroll_spared;
        x = starting_point_x;
        y = starting_point_y - max_rise;
        image_angle = 0;
        image_alpha = 0.5;
        
        if (no_loop_create_clouds == false)
        {
            for (i = 0; i <= 11; i += 1)
                instance_create(x, y, obj_spare_cloud);
        }
        
        no_loop_create_clouds = true;
    }
    
    if (damage_disjoint_count > 0)
    {
        damage_disjoint_count -= 1;
    }
    else if (enemy_dead == false && enemy_spared == false)
    {
        if (global.enemy_low_hp == true && global.current_hp_enemy < global.max_hp_enemy)
            sprite_index = spr_crispy_scroll_head_critical;
        else
            sprite_index = spr_masterswordremix_body;
    }
    
    if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == false)
    {
        image_angle = 0;
        time_elapsed = 10;
        sign_modifier = -1;
        time_elapsed_angle = 0;
        sign_modifier_angle = 1;
        damage_disjoint_count = 12;
        no_loop_damage_disjoint_count = true;
    }
    else if (!instance_exists(obj_text_damage_count))
    {
        no_loop_damage_disjoint_count = false;
    }
    
    if (damage_disjoint_count == 12)
        damage_disjoint_x = -50;
    else if (damage_disjoint_count == 10)
        damage_disjoint_x = 50;
    else if (damage_disjoint_count == 8)
        damage_disjoint_x = -20;
    else if (damage_disjoint_count == 6)
        damage_disjoint_x = 20;
    else if (damage_disjoint_count == 4)
        damage_disjoint_x = -10;
    else if (damage_disjoint_count == 2)
        damage_disjoint_x = 10;
    else if (damage_disjoint_count == 0)
        damage_disjoint_x = 0;
    
    if (damage_disjoint_count > 0 || global.current_hp_enemy <= 0)
        sprite_index = spr_crispy_scroll_dead;
    
    x = draw_position_x + damage_disjoint_x;
    y = draw_position_y + damage_disjoint_y;
    image_angle = 0;
    
    if (!(instance_exists(obj_text_damage_count) && global.fight_number == 1) && enemy_dead == false && enemy_spared == false)
    {
        if (instance_exists(obj_quote_battle_crispy_scroll_a) && (global.last_action_selected == "Action 1 Message 0" || global.last_action_selected == "Action 2 Message 1"))
        {
            if (enemy_count == 3)
            {
                if ((global.enemy_dead_2 + global.enemy_spared_2 + global.enemy_dead_3 + global.enemy_spared_3) >= 2)
                {
                    time_increase = 2;
                    time_increase_angle = time_increase;
                }
                else
                {
                    time_increase = 1;
                    time_increase_angle = time_increase;
                }
            }
            else if (enemy_count == 2)
            {
                if ((global.enemy_dead_2 + global.enemy_spared_2) >= 1)
                {
                    time_increase = 2;
                    time_increase_angle = time_increase;
                }
                else
                {
                    time_increase = 1;
                    time_increase_angle = time_increase;
                }
            }
            else
            {
                time_increase = 2;
                time_increase_angle = time_increase;
            }
        }
        else
        {
            time_increase = 1;
            time_increase_angle = time_increase;
        }
        
        sign_modifier_advance_back = sign_modifier;
        time_elapsed_advance_back = time_elapsed + time_elapsed_advance_increase_back;
        
        if (time_elapsed_advance_back >= time_max)
        {
            time_elapsed_advance_back -= time_max;
            sign_modifier_advance_back = -sign_modifier_advance_back;
        }
        
        game_maker_cannot_do_math = power((time_elapsed_advance_back / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_advance = sign_modifier_advance_back * (max_rise - round(game_maker_cannot_do_math));
        advance_y_back = draw_position_y + animation_disjoint_advance;
        sign_modifier_advance_hand = sign_modifier;
        time_elapsed_advance_hand = time_elapsed + time_elapsed_advance_increase_hand;
        
        if (time_elapsed_advance_hand >= time_max)
        {
            time_elapsed_advance_hand -= time_max;
            sign_modifier_advance_hand = -sign_modifier_advance_hand;
        }
        
        game_maker_cannot_do_math = power((time_elapsed_advance_hand / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_advance = sign_modifier_advance_hand * (max_rise - round(game_maker_cannot_do_math));
        advance_y_hand = draw_position_y + animation_disjoint_advance;
        game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_y = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
        time_elapsed += time_increase;
        
        if (time_elapsed >= time_max)
        {
            time_elapsed = 0;
            sign_modifier = -sign_modifier;
        }
        
        y = draw_position_y + animation_disjoint_y;
        
        if (sprite_index == spr_masterswordremix_body)
        {
            game_maker_cannot_do_math = power((time_elapsed_angle / ((time_max_angle / 2) * (1 / sqrt(max_rise_angle)))) - sqrt(max_rise_angle), 2);
            animation_disjoint_angle = sign_modifier_angle * (max_rise_angle - round(game_maker_cannot_do_math));
            time_elapsed_angle += time_increase_angle;
            
            if (time_elapsed_angle >= time_max_angle)
            {
                time_elapsed_angle = 0;
                sign_modifier_angle = -sign_modifier_angle;
            }
            
            image_angle = animation_disjoint_angle;
        }
        else
        {
            image_angle = 0;
        }
    }
    else
    {
        y = starting_point_y - max_rise;
    }
}
