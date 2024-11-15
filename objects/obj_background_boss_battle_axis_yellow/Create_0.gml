var bg_color, bg_color_2, a, i;

part_axis_bg_sys = part_system_create();
part_axis_bg_em = part_emitter_create(part_axis_bg_sys);
part_system_depth(part_axis_bg_sys, 9999);
part_axis_bg = part_type_create();
part_type_sprite(part_axis_bg, 238, 0, 0, 1);
part_type_size(part_axis_bg, 2, 2, 0, 0);
part_type_colour3(part_axis_bg, 65280, 65535, 4235519);
part_type_alpha3(part_axis_bg, 0, 0.8, 0);
part_type_speed(part_axis_bg, 5, 5, 0, 0);
part_type_direction(part_axis_bg, 270, 270, 0, 0);
part_type_life(part_axis_bg, 90, 90);
part_type_blend(part_axis_bg, 1);
part_axis_bg_dark = part_type_create();
part_axis_bg_dark_speed = 4;
part_type_sprite(part_axis_bg_dark, 238, 0, 0, 1);
part_type_size(part_axis_bg_dark, 3, 3, 0, 0);
bg_color = make_color_rgb(19, 63, 26);
bg_color_2 = make_color_rgb(43, 145, 60);
part_type_colour_mix(part_axis_bg_dark, bg_color, bg_color_2);
part_type_alpha1(part_axis_bg_dark, 0.22);
part_type_speed(part_axis_bg_dark, part_axis_bg_dark_speed, part_axis_bg_dark_speed, 0, 0);
part_type_direction(part_axis_bg_dark, 90, 90, 0, 0);
part_type_life(part_axis_bg_dark, 2100, 2100);
part_type_blend(part_axis_bg_dark, 1);
part_emitter_region(part_axis_bg_sys, part_axis_bg_em, 0, room_width, room_height, room_height, 3, 0);
part_x_last = 0;
alarm[0] = irandom_range(25, 45);
alarm[2] = irandom_range(25, 45);

for (a = room_height; a >= 0; a -= 36)
{
    i = room_width + 15;
    
    while (i >= 0)
    {
        if (choose(1, 2, 3) != 1)
            part_particles_create(part_axis_bg_sys, i, a, part_axis_bg_dark, 1);
        
        i -= 36;
    }
}

alarm[1] = 36 / part_axis_bg_dark_speed;
depth = 9998;
overlay_alpha = 0;
fade_out = false;
