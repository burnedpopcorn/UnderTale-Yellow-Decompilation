x = id_checker.x + (id_checker.feather_radius * cos(degtorad(image_angle)));
y = id_checker.y - (id_checker.feather_radius * sin(degtorad(image_angle)));
image_alpha = id_checker.feather_alpha;
x_previous = x;
y_previous = y;
