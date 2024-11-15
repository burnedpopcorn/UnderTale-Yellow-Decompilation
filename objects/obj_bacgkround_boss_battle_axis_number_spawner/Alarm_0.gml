part_type_size(creator.part_axis_bg, part_size, part_size, 0, 0);
part_particles_create(creator.part_axis_bg_sys, part_x, y, creator.part_axis_bg, 1);

if (number_count > 0)
{
    alarm[0] = size_multiplier / 6;
    number_count--;
}
else
{
    instance_destroy();
}
