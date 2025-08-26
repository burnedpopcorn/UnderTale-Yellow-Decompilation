if (live_call())
    return global.live_result;

if (instance_exists(obj_rope_circle_part))
{
    with (obj_rope_circle_part)
        image_angle += other.circle_angle_inc;
}

if (instance_exists(obj_ceroba_attack_rope_circle_mask))
{
    circle_angle += circle_angle_inc;
    
    if (circle_angle > 360)
        circle_angle -= 360;
    
    var xx = x + lengthdir_x(mask_dist, circle_angle);
    var yy = y + lengthdir_y(mask_dist, circle_angle);
    obj_ceroba_attack_rope_circle_mask.x = xx;
    obj_ceroba_attack_rope_circle_mask.y = yy;
    obj_ceroba_attack_rope_circle_mask.image_angle = circle_angle - 90;
}

with (obj_ceroba_phase_2_bell)
{
    if (can_move == false)
    {
        for (var i = 0; i < array_length(other.bell_position); i++)
        {
            if (x == other.bell_position[i][0] && y == other.bell_position[i][1])
            {
                can_move = true;
                var array_target = i + 1;
                
                if (i == 3)
                    array_target = 0;
                
                target_position[0] = other.bell_position[array_target][0];
                target_position[1] = other.bell_position[array_target][1];
            }
        }
    }
}
