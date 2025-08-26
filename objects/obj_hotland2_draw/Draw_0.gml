var yy = 75;

for (var i = 0; i <= 6; i++)
{
    var adt = 62 * i;
    draw_sprite(spr_glass_tube, 0, 0 + adt, yy);
}

for (var current_tube = 0; current_tube < 2; current_tube += 1)
    draw_sprite(tube_sprite[current_tube], 0, lava_tube_x[current_tube], yy);
