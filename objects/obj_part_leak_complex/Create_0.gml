if (global.hotland_flag[9] >= 3 || global.route == 3)
{
    instance_destroy();
    exit;
}

ps_droplets = part_system_create();
part_system_depth(ps_droplets, -99999);
pt_droplet = part_type_create();
part_type_shape(pt_droplet, 3);
part_type_size(pt_droplet, 1, 1, 0, 0);
part_type_scale(pt_droplet, 0.05, 0.05);
part_type_orientation(pt_droplet, 90, 90, 0, 0, 0);
part_type_color3(pt_droplet, 16777088, 16777088, 16777088);
part_type_alpha3(pt_droplet, 0, 1, 1);
part_type_blend(pt_droplet, 0);
part_type_life(pt_droplet, 17, 19);
part_type_speed(pt_droplet, 0, 0, 0.2, 0);
part_type_direction(pt_droplet, 270, 270, 0, 0);
part_type_gravity(pt_droplet, 0, 0);
pt_burst = part_type_create();
part_type_shape(pt_burst, 0);
part_type_size(pt_burst, 1, 1, 0, 0);
part_type_scale(pt_burst, 1, 1);
part_type_orientation(pt_burst, 0, 0, 0, 0, 0);
part_type_color3(pt_burst, 16777088, 16777088, 16777088);
part_type_alpha3(pt_burst, 1, 1, 0);
part_type_blend(pt_burst, 0);
part_type_life(pt_burst, 20, 20);
part_type_speed(pt_burst, 2, 2, 0, 0);
part_type_direction(pt_burst, 70, 120, 0, 0);
part_type_gravity(pt_burst, 0.2, 270);
part_type_death(pt_droplet, 4, pt_burst);
global.pe_droplet = part_emitter_create(ps_droplets);
alarm[0] = 1;
