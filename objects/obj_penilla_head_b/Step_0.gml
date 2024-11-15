var enemy_dead_2, enemy_spared_2;

enemy_dead_2 = global.enemy_dead_2;
enemy_spared_2 = global.enemy_spared_2;

if (enemy_dead_2 == false && enemy_spared_2 == false)
    image_alpha = global.image_alpha_enemy_attacking;

if (enemy_dead_2 == true)
{
    instance_destroy();
    exit;
    image_alpha = 0.5;
}
else if (enemy_spared_2 == true)
{
    x = starting_point_x;
    y = starting_point_y;
    image_alpha = 0.5;
    
    if (no_loop_create_clouds == false)
    {
        for (i = 0; i <= 11; i += 1)
            instance_create(x - 20, y, obj_spare_cloud);
    }
    
    no_loop_create_clouds = true;
    instance_destroy();
    exit;
}

if (damage_disjoint_count > 0)
{
    damage_disjoint_count -= 1;
}
else if (enemy_dead_2 == false && enemy_spared_2 == false)
{
    if (global.enemy_low_hp_2 == true && global.current_hp_enemy_2 < global.max_hp_enemy_2)
        sprite_index = spr_penilla_head_critical;
    else
        sprite_index = spr_penilla_head;
}

if (instance_exists(obj_text_damage_count) && global.fight_number == 2 && no_loop_damage_disjoint_count == false)
{
    time_elapsed_x = 0;
    time_elapsed_y = 0;
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

if (damage_disjoint_count > 0 || global.current_hp_enemy_2 <= 0)
    image_alpha = 0;

x = draw_position_x + damage_disjoint_x;
y = draw_position_y + damage_disjoint_y;

if (!(instance_exists(obj_text_damage_count) && global.fight_number == 2) && enemy_dead_2 == false && enemy_spared_2 == false)
{
    if (sprite_index == spr_penilla_head)
    {
        game_maker_cannot_do_math = power((time_elapsed_x / ((time_max_x / 2) * (1 / sqrt(max_rise_x)))) - sqrt(max_rise_x), 2);
        animation_disjoint_x = sign_modifier_x * (max_rise_x - round(game_maker_cannot_do_math));
        time_elapsed_x += time_increase_x;
        
        if (time_elapsed_x >= time_max_x)
        {
            time_elapsed_x = 0;
            sign_modifier_x = -sign_modifier_x;
        }
        
        x = draw_position_x + animation_disjoint_x;
    }
    
    game_maker_cannot_do_math = power((time_elapsed_y / ((time_max_y / 2) * (1 / sqrt(max_rise_y)))) - sqrt(max_rise_y), 2);
    animation_disjoint_y = sign_modifier_y * (max_rise_y - round(game_maker_cannot_do_math));
    time_elapsed_y += time_increase_y;
    
    if (time_elapsed_y >= time_max_y)
    {
        time_elapsed_y = 0;
        sign_modifier_y = -sign_modifier_y;
    }
    
    y = draw_position_y + animation_disjoint_y;
    image_angle = max_angle * ((draw_position_x - x) / max_rise_x);
}
else
{
    image_angle = 0;
}
