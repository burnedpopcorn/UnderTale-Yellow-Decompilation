var enemy_dead = global.enemy_dead;
var enemy_spared = global.enemy_spared;

if (enemy_dead == false && enemy_spared == false)
    image_alpha = global.image_alpha_enemy_attacking;

if (instance_exists(obj_dialogue_battle_win_genocide))
    enemy_dead = true;

if (enemy_dead == true)
{
    x = starting_point_x;
    y = starting_point_y;
    instance_create(starting_point_x, starting_point_y, obj_micro_froggit_dead);
    instance_destroy();
    exit;
    image_alpha = 0.5;
}
else if (enemy_spared == true)
{
    x = starting_point_x;
    y = starting_point_y;
    image_alpha = 0.5;
    
    if (no_loop_create_clouds == false)
    {
        for (i = 0; i <= 11; i += 1)
        {
            var micro_cloud = instance_create(x, y, obj_spare_cloud);
            micro_cloud.image_xscale = 0.5;
            micro_cloud.image_yscale = 0.5;
        }
    }
    
    no_loop_create_clouds = true;
}

if (damage_disjoint_count > 0)
    damage_disjoint_count -= 1;
else if (enemy_dead == false && enemy_spared == false)
    sprite_index = spr_micro_froggit;

if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && global.attacking_damage_stat > 0 && no_loop_damage_disjoint_count == false)
{
    time_elapsed = 0;
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
    sprite_index = spr_micro_froggit;

x = draw_position_x + damage_disjoint_x;
y = draw_position_y + damage_disjoint_y;

if (!(instance_exists(obj_text_damage_count) && global.fight_number == 1) && enemy_dead == false && enemy_spared == false)
{
    if (jump_type == 0)
    {
        game_maker_cannot_do_math = power((time_elapsed / ((time_max_low / 2) * (1 / sqrt(max_rise_low)))) - sqrt(max_rise_low), 2);
        animation_disjoint_y = sign_modifier * (max_rise_low - round(game_maker_cannot_do_math));
        time_elapsed += time_increase;
        
        if (time_elapsed >= time_max_low)
        {
            time_elapsed = 0;
            jump_count += 1;
            
            if (jump_count >= jump_count_max_low)
            {
                jump_count = 0;
                jump_type = 1;
            }
        }
    }
    else if (jump_type == 1 && can_jump == true)
    {
        game_maker_cannot_do_math = power((time_elapsed / ((time_max_high / 2) * (1 / sqrt(max_rise_high)))) - sqrt(max_rise_high), 2);
        animation_disjoint_y = sign_modifier * (max_rise_high - round(game_maker_cannot_do_math));
        time_elapsed += time_increase;
        
        if (time_elapsed >= time_max_high)
        {
            time_elapsed = 0;
            jump_count += 1;
            
            if (jump_count >= jump_count_max_high)
            {
                jump_count = 0;
                jump_type = 0;
            }
        }
    }
    
    y = draw_position_y + animation_disjoint_y;
}

if (stomped_on == true)
{
    var shake_direction_x, shake_direction_y;
    
    if (stomp_counter < stomp_counter_max)
    {
        shake_direction_x = irandom_range(-shake_intensity_x, shake_intensity_x);
        shake_direction_y = irandom_range(-shake_intensity_y, shake_intensity_y);
        stomp_counter += 1;
    }
    else
    {
        shake_direction_x = 0;
        shake_direction_y = 0;
    }
    
    x = draw_position_x + shake_direction_x;
    y = draw_position_y + shake_direction_y;
    
    if (stomp_counter >= stomp_counter_max && no_loop_stomp == false)
    {
        alarm[0] = 30;
        no_loop_stomp = true;
    }
    
    image_alpha = 0.5;
}
