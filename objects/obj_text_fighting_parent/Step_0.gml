vsp += grav;

if (vsp >= 0 && y >= starting_point)
{
    vsp = 0;
    grav = 0;
    y = starting_point;
}

y += vsp;
