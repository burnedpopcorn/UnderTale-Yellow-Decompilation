if (!instance_exists(obj_dialogue_box_battle_transformation_any))
{
    instance_destroy();
    exit;
}

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
    distance = distance_to_object(obj_dialogue_box_battle_transformation_any);
    move_speed_current = round(move_speed * (1 - (distance / distance_max)));
    
    if (move_speed_current < 1)
        move_speed_current = 1;
    
    x += lengthdir_x(move_speed_current, angle);
    y += lengthdir_y(move_speed_current, angle);
    image_angle += image_angle_increase;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any))
    {
        if (distance_to_object(obj_dialogue_box_battle_transformation_any) >= distance_max)
            angle = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
    }
}
