if (live_call())
    return global.live_result;

var shield_perc = obj_ceroba_phase_2_shield.fill_percentage;

if (shield_perc >= 1)
{
    instance_destroy();
    exit;
}

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
