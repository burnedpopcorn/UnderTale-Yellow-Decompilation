if (move == false)
{
    if (distance_counter < distance_counter_max)
    {
        x += lengthdir_x(move_speed_create, angle);
        y += lengthdir_y(move_speed_create, angle);
        distance_counter += 1;
    }
}
else if (move == true)
{
    if (no_loop == false)
    {
        angle = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
        no_loop = true;
    }
    
    x += lengthdir_x(move_speed_attack, angle);
    y += lengthdir_y(move_speed_attack, angle);
    
    if (move_speed_attack < move_speed_attack_max)
    {
        move_speed_attack += move_speed_attack_increase;
        
        if (move_speed_attack > move_speed_attack_max)
            move_speed_attack = move_speed_attack_max;
    }
}

if (bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height)
    instance_destroy();
