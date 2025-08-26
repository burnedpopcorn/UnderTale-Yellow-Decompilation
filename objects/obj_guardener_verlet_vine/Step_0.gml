points[1][0] += (cos(current_time / 1000) * 0.1);
scr_verlet_updatepoints(points, p_friction, p_gravity);

for (var i = 0; i < precision; i++)
{
    scr_verlet_updatesticks(sticks);
    scr_verlet_guardener_wind(points);
}
