if (image_alpha < 1 && can_move == false)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
        can_move = true;
}

if (instance_exists(obj_dialogue_box_battle_transformation_any) && no_loop_switch_y == false)
{
    if (y >= (obj_dialogue_box_battle_transformation_any.y - 4) && y <= (obj_dialogue_box_battle_transformation_any.y + 4))
    {
        starting_position_y = y;
        max_rise_y = max_rise_y / 2;
        time_elapsed_y = 0;
        time_increase_y *= 2;
        no_loop_switch_y = true;
    }
}

if (can_move == true)
{
    if (object_index != obj_battle_enemy_attack_flier_fire_middle)
    {
        game_maker_cannot_do_math_x = power((time_elapsed_x / ((time_max_x / 2) * (1 / sqrt(max_rise_x)))) - sqrt(max_rise_x), 2);
        animation_disjoint_x = sign_modifier_x * (max_rise_x - round(game_maker_cannot_do_math_x));
        time_elapsed_x += time_increase_x;
        
        if (time_elapsed_x >= time_max_x)
        {
            time_elapsed_x = 0;
            sign_modifier_x = -sign_modifier_x;
        }
        
        x = starting_position_x + animation_disjoint_x;
    }
    else
    {
        x = starting_position_x;
    }
    
    game_maker_cannot_do_math_y = power((time_elapsed_y / ((time_max_y / 2) * (1 / sqrt(max_rise_y)))) - sqrt(max_rise_y), 2);
    animation_disjoint_y = sign_modifier_y * (max_rise_y - round(game_maker_cannot_do_math_y));
    time_elapsed_y += time_increase_y;
    
    if (time_elapsed_y >= time_max_y)
    {
        time_elapsed_y = 0;
        sign_modifier_y = -sign_modifier_y;
    }
    
    y = starting_position_y + animation_disjoint_y;
}
