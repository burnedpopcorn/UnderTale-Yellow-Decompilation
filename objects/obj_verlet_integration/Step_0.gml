var i;

if (mouse_check_button(mb_left))
{
    points[0][0] = mouse_x;
    points[0][1] = mouse_y;
}

scr_verlet_updatepoints(points, p_friction, p_gravity);

for (i = 0; i < precision; i++)
{
    scr_verlet_updatesticks(sticks);
    scr_verlet_constrainpoints(points, p_friction, bounce);
}
