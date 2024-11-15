var yy, i, adt;

yy = 75;

for (i = 0; i <= 6; i++)
{
    adt = 62 * i;
    draw_sprite(spr_tube_water, -1, 0 + adt, yy + 36);
}
