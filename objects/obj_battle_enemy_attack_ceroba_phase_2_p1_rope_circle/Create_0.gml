if (live_call())
    return global.live_result;

for (var i = 0; i < 16; i++)
{
    var circle_part = instance_create_depth(x, y, depth, obj_rope_circle_part);
    circle_part.image_angle = i * 22;
}

mask_dist = 55;
circle_angle = 90;
circle_angle_inc = 3;
var xx = x + lengthdir_x(mask_dist, circle_angle);
var yy = y + lengthdir_y(mask_dist, circle_angle);
var circle_mask = instance_create_depth(xx, yy, depth - 1, obj_ceroba_attack_rope_circle_mask);
obj_ceroba_attack_rope_circle_mask.image_angle = circle_angle - 90;
alarm[0] = 240;
