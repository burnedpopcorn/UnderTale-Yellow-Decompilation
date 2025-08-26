var i = room_width + 15;

while (i >= 0)
{
    if (choose(1, 2, 3) != 1)
        part_particles_create(part_axis_bg_sys, i, room_height, part_axis_bg_dark, 1);
    
    i -= 30;
}

alarm[1] = 36 / part_axis_bg_dark_speed;
