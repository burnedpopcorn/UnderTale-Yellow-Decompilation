if (image_alpha < 1 && can_move == false)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
    {
        image_speed = 0.3;
        can_move = true;
    }
}

if (instance_exists(obj_heart_battle_fighting_parent))
{
    angle = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
    image_angle = angle;
    
    if (can_move == true)
    {
        x += lengthdir_x(move_speed, angle);
        y += lengthdir_y(move_speed, angle);
    }
}
