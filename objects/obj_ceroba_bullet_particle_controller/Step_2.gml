var inbetween_particles, x_dif, y_dif, x_start, y_start, x_inc, y_inc, i, x_new, y_new, dir;

if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_bullet_2)
{
    inbetween_particles = 2;
    x_dif = x - xprevious;
    y_dif = y - yprevious;
    x_start = xprevious;
    y_start = yprevious;
    x_inc = x_dif / inbetween_particles;
    y_inc = y_dif / inbetween_particles;
    
    for (i = 0; i < inbetween_particles; i++)
    {
        x_new = x_start + x_inc;
        y_new = y_start + y_inc;
        dir = point_direction(x_start, y_start, x_new, y_new);
        part_type_orientation(global.pt_trail_outer, dir, dir, 0, 0, 0);
        part_particles_create(global.ps_outer, x_new, y_new, global.pt_trail_outer, 1);
        x_start = x_new;
        y_start = y_new;
    }
}

with (obj_battle_enemy_attack_bullet_residue)
{
    inbetween_particles = 1;
    x_dif = x - xprevious;
    y_dif = y - yprevious;
    x_start = xprevious;
    y_start = yprevious;
    x_inc = x_dif / inbetween_particles;
    y_inc = y_dif / inbetween_particles;
    
    for (i = 0; i < inbetween_particles; i++)
    {
        x_new = x_start + x_inc;
        y_new = y_start + y_inc;
        dir = point_direction(x_start, y_start, x_new, y_new);
        part_type_orientation(global.pt_trail_small, dir, dir, 0, 0, 0);
        part_particles_create(global.ps_outer, x_new, y_new, global.pt_trail_small, 1);
        x_start = x_new;
        y_start = y_new;
    }
}
