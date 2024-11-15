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

if (can_move == true)
{
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_x = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
    time_elapsed += time_increase;
    
    if (time_elapsed >= time_max)
    {
        time_elapsed = 0;
        sign_modifier = -sign_modifier;
    }
    
    x = starting_position_x + animation_disjoint_x;
    animation_disjoint_y -= y_speed;
    y = round(starting_position_y + animation_disjoint_y);
}

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
