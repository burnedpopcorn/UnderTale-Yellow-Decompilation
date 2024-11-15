if (image_alpha < 1 && move == false)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
    {
        angle = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
        alarm[0] = 40;
    }
}
else if (move == true)
{
    x += lengthdir_x(move_speed, angle);
    y += lengthdir_y(move_speed, angle);
    
    if (move_speed < move_speed_max)
    {
        move_speed += move_speed_increase;
        
        if (move_speed > move_speed_max)
            move_speed = move_speed_max;
    }
}

if (bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height)
    instance_destroy();
