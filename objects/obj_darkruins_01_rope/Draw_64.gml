if (waiter == 4)
{
    display_set_gui_size(-1, -1);
    application_surface_draw_enable(false);
    var app_surf_height = surface_get_height(application_surface);
    var app_surf_width = surface_get_width(application_surface);
    draw_surface_part_ext(application_surface, 0, 0, app_surf_width, app_surf_height * 0.5, 20, 0, 1, 1, 16777215, 1);
    draw_surface_part_ext(application_surface, 0, app_surf_height * 0.5, app_surf_width, app_surf_height, -20, app_surf_height * 0.5, 1, 1, 16777215, 1);
    draw_sprite_ext(spr_flowey, 0, flowey_x, flowey_y, 2, 2, 0, c_white, 1);
    display_set_gui_size(320, 240);
}
