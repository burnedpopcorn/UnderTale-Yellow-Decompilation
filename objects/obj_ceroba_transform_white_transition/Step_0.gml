if (live_call())
    return global.live_result;

if (multiplier < 1)
    multiplier += 0.015;

circle_r = circle_r_max * multiplier;
draw_alpha = multiplier;

if (instance_exists(obj_ceroba_transformation_mask))
{
    x = obj_ceroba_transformation_mask.x;
    y = obj_ceroba_transformation_mask.y - 10;
}
