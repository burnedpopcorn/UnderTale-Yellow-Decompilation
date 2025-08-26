surf_screen_copy = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
surf_screen_noloop = false;
line_number = 320;

for (var i = 0; i < line_number; i++)
    line_y[i] = irandom_range(-20, 0);
