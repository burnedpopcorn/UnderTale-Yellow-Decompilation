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
    if (reverse == true)
    {
        if (abs(starting_position_x - x) < abs(x_speed * 3))
            x -= (x_speed / 2);
        else
            reverse = false;
    }
    else
    {
        x += x_speed;
    }
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
