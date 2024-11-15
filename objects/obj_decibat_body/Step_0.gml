var enemy_dead, enemy_spared;

if (battle_start == true && flee == false)
{
    enemy_dead = global.enemy_dead;
    enemy_spared = global.enemy_spared;
    
    if (enemy_dead == false && enemy_spared == false)
        image_alpha = global.image_alpha_enemy_attacking;
    
    if (enemy_dead == true)
    {
        x = starting_point_x;
        y = starting_point_y;
        instance_create(starting_point_x, starting_point_y, obj_decibat_dead);
        instance_destroy();
        exit;
        image_alpha = 0.5;
    }
    else if (enemy_spared == true)
    {
        sprite_index = spr_decibat_spared;
        x = starting_point_x;
        y = starting_point_y;
        image_alpha = 0.5;
        
        if (no_loop_create_clouds == false)
        {
            for (i = 0; i <= 11; i += 1)
                instance_create(x, y, obj_spare_cloud);
        }
        
        no_loop_create_clouds = true;
    }
    
    if (damage_disjoint_count > 0)
        damage_disjoint_count -= 1;
    else if (enemy_dead == false && enemy_spared == false)
        sprite_index = spr_decibat_body;
    
    if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == false)
    {
        time_elapsed = 0;
        sign_modifier = -1;
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
        sprite_index = spr_decibat_dead;
    
    x = draw_position_x + damage_disjoint_x;
    y = draw_position_y + damage_disjoint_y;
    
    if (!(instance_exists(obj_text_damage_count) && global.fight_number == 1) && enemy_dead == false && enemy_spared == false)
    {
        game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_y = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
        game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise_wing)))) - sqrt(max_rise_wing), 2);
        wing_speed_modifier = sign_modifier * (max_rise_wing - round(game_maker_cannot_do_math));
        time_elapsed += time_increase;
        
        if (time_elapsed >= time_max)
        {
            time_elapsed = 0;
            sign_modifier = -sign_modifier;
        }
        
        y = draw_position_y + animation_disjoint_y;
        
        if (sign_modifier == 1)
            wing_speed_add = wing_speed_adjuster;
        else
            wing_speed_add = 0;
        
        image_speed = wing_speed_default + wing_speed_modifier + wing_speed_add;
    }
}
else if (flee == false)
{
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_y = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise_wing)))) - sqrt(max_rise_wing), 2);
    wing_speed_modifier = sign_modifier * (max_rise_wing - round(game_maker_cannot_do_math));
    time_elapsed += time_increase;
    
    if (time_elapsed >= time_max)
    {
        time_elapsed = 0;
        sign_modifier = -sign_modifier;
    }
    
    y = draw_position_y + animation_disjoint_y;
    
    if (sign_modifier == 1)
        wing_speed_add = wing_speed_adjuster;
    else
        wing_speed_add = 0;
    
    image_speed = wing_speed_default + wing_speed_modifier + wing_speed_add;
}

if (flee == true)
{
    game_maker_cannot_do_math = power((time_elapsed_flee / ((time_max_flee / 2) * (1 / sqrt(max_rise_flee)))) - sqrt(max_rise_flee), 2);
    animation_disjoint_y_flee = sign_modifier_flee * (max_rise_flee - round(game_maker_cannot_do_math));
    time_elapsed_flee += time_increase_flee;
    
    if (time_elapsed_flee >= time_max_flee)
        time_elapsed_flee = time_max_flee;
    
    y = draw_position_y_flee + animation_disjoint_y_flee;
    wing_speed_add = wing_speed_adjuster;
    image_speed = wing_speed_default + max_rise_wing + wing_speed_add;
    
    if (bbox_bottom <= 0)
    {
        global.important_cutscene = false;
        global.enemy_sparing = true;
        global.enemy_spared = true;
        
        with (obj_battle_generator)
            audio_extend = false;
        
        audio_stop_all();
        instance_create(0, 0, obj_dialogue_battle_win_pacifist);
        instance_destroy();
    }
}
