if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_bullet_2)
{
    var inbetween_particles = 2;
    var x_dif = x - xprevious;
    var y_dif = y - yprevious;
    var x_start = xprevious;
    var y_start = yprevious;
    var x_inc = x_dif / inbetween_particles;
    var y_inc = y_dif / inbetween_particles;
    
    for (var i = 0; i < inbetween_particles; i++)
    {
        var x_new = x_start + x_inc;
        var y_new = y_start + y_inc;
        var dir = point_direction(x_start, y_start, x_new, y_new);
        part_type_orientation(global.pt_trail_outer, dir, dir, 0, 0, 0);
        part_particles_create(global.ps_outer, x_new, y_new, global.pt_trail_outer, 1);
        x_start = x_new;
        y_start = y_new;
    }
}

with (obj_battle_enemy_attack_bullet_residue)
{
    var inbetween_particles = 1;
    var x_dif = x - xprevious;
    var y_dif = y - yprevious;
    var x_start = xprevious;
    var y_start = yprevious;
    var x_inc = x_dif / inbetween_particles;
    var y_inc = y_dif / inbetween_particles;
    
    for (var i = 0; i < inbetween_particles; i++)
    {
        var x_new = x_start + x_inc;
        var y_new = y_start + y_inc;
        var dir = point_direction(x_start, y_start, x_new, y_new);
        part_type_orientation(global.pt_trail_small, dir, dir, 0, 0, 0);
        part_particles_create(global.ps_outer, x_new, y_new, global.pt_trail_small, 1);
        x_start = x_new;
        y_start = y_new;
    }
}
