surf_screen_copy = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
surf_screen_noloop = false;
h_number = 10;
v_number = 10;
total_number = h_number * v_number;
h_width = 320 / h_number;
v_height = 240 / v_number;
timer = 100;
var v = 0;
var h = 0;

for (var i = 0; i < total_number; i++)
{
    if (h > (h_number - 1))
    {
        h -= h_number;
        v += 1;
    }
    
    piece_x[i] = h_width * h;
    piece_y[i] = v_height * v;
    piece_hsp[i] = choose(-1, 1);
    piece_vsp[i] = -4;
    h += 1;
}

piece_grav = 0.5;
audio_play_sound(snd_glass_smashable_large_break, 1, 0);
