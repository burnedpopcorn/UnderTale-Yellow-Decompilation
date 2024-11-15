var i, circle_part, xx, yy, circle_mask;

if (live_call())
    return global.live_result;

for (i = 0; i < 16; i++)
{
    circle_part = instance_create_depth(x, y, depth, obj_rope_circle_part);
    circle_part.image_angle = i * 22;
}

mask_dist = 55;
circle_angle = 90;
circle_angle_inc = 6;

if (global.hotland_flag[2] >= 3)
    circle_angle_inc = 8;

xx = x + lengthdir_x(mask_dist, circle_angle);
yy = y + lengthdir_y(mask_dist, circle_angle);
circle_mask = instance_create_depth(xx, yy, depth - 1, obj_ceroba_attack_rope_circle_mask);
obj_ceroba_attack_rope_circle_mask.image_angle = circle_angle - 90;
alarm[0] = 240;
