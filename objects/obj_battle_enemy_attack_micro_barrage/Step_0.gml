if (image_alpha < 1 && can_move == false)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
    {
        angle = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
        can_move = true;
    }
}

if (can_move == true)
{
    y += grav_total;
    grav_total += grav;
    x += lengthdir_x(move_speed, angle);
    y += lengthdir_y(move_speed, angle);
    
    if (!place_meeting(x, y, obj_dialogue_box_battle_transformation_any))
    {
    }
}

if (can_fade == true)
{
    image_alpha -= 0.1;
    
    if (image_alpha < 0)
        image_alpha = 0;
    
    if (image_alpha == 0)
        instance_destroy();
}
