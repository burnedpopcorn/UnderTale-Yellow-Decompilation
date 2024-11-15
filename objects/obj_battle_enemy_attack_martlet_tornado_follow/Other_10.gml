image_alpha = id_master.image_alpha;
feather_angle = id_master.feather_angle;
x_radius = id_master.x_radius + radius_difference;
y_radius = id_master.y_radius;
x = x_center + (x_radius * cos(degtorad(feather_angle)));
y = y_center - (y_radius * sin(degtorad(feather_angle)));

if (id_counter == "above")
    y += (id_master.skew_difference + y_difference);
else
    y += y_difference;

draw_color = id_master.draw_color;
depth = id_master.depth;
image_xscale = id_master.image_xscale;

if (id_counter == "above")
    image_angle = -sign(id_master.y_skew_multiplier) * radtodeg(arctan(abs(id_master.y_skew_multiplier) / x_radius));
else
    image_angle = 0;
