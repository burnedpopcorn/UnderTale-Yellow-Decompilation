for (var i = 0; i < total_number; i++)
{
    piece_x[i] += piece_hsp[i];
    piece_y[i] += piece_vsp[i];
    piece_vsp[i] += piece_grav;
}

timer--;

if (timer < 0)
    instance_destroy();
