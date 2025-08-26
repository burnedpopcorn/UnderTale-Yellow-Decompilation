if (image_alpha < 1 && can_move == false)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
    {
        image_speed = 0.5;
        can_move = true;
    }
}

if (instance_exists(obj_dialogue_box_battle_transformation_any) && no_loop_switch == false)
{
    if (y >= (obj_dialogue_box_battle_transformation_any.y - 4) && y <= (obj_dialogue_box_battle_transformation_any.y + 4))
    {
        starting_position_y = y;
        max_rise = max_rise / 2;
        time_elapsed = 1;
        time_increase *= 2;
        no_loop_switch = true;
    }
}

if (can_move == true)
{
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_y = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
    time_elapsed += time_increase;
    
    if (time_elapsed >= time_max)
    {
        time_elapsed = 0;
        sign_modifier = -sign_modifier;
    }
    
    y = starting_position_y + animation_disjoint_y;
    animation_disjoint_x += x_speed;
    x = round(starting_position_x + animation_disjoint_x);
    
    if (place_meeting(x, y, obj_dialogue_box_battle_transformation_any))
        can_vanish = true;
    
    if (!place_meeting(x, y, obj_dialogue_box_battle_transformation_any) && can_vanish == true)
    {
        if (image_alpha > 0)
        {
            image_alpha -= 0.1;
            
            if (image_alpha < 0)
                image_alpha = 0;
            
            if (image_alpha == 0)
                instance_destroy();
        }
    }
}
