var xscale_multiplier, y_skew_temp;

if (image_alpha < 1)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
}

feather_angle += obj_battle_enemy_attack_martlet_tornado_checker.feather_angle_speed;

if (feather_angle >= 360)
    feather_angle -= 360;

x_radius = (obj_dialogue_box_battle_transformation_any.bbox_right - obj_battle_enemy_attack_martlet_tornado_checker.x_center) + 30;
y_radius = obj_battle_enemy_attack_martlet_tornado_checker.radius_increase;
x = x_center + (x_radius * cos(degtorad(feather_angle)));
y = y_center - (y_radius * sin(degtorad(feather_angle)));
y_skew_multiplier = obj_battle_enemy_attack_martlet_tornado_checker.skew_increase;
skew_difference = ((x - x_center) / x_radius) * y_skew_multiplier;
y += round(skew_difference / 2);

if (feather_angle >= 0 && feather_angle < 180)
{
    xscale_sign = -1;
    draw_color = draw_color_back;
    depth = obj_dialogue_box_battle_transformation_any.depth + 1;
}
else
{
    xscale_sign = 1;
    draw_color = draw_color_front;
    depth = depth_default;
}

xscale_multiplier = 1 - (abs(x - x_center) / x_radius);
image_xscale = xscale_sign * xscale_multiplier;
y_skew_temp = round(y_skew_multiplier / 2);
image_angle = -sign(y_skew_temp) * radtodeg(arctan(abs(y_skew_temp) / x_radius));

for (i = 0; i < 2; i++)
{
    with (id_feather[i])
        event_user(0);
}
