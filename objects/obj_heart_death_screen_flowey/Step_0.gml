if (shake_intensity > 0)
{
    x = xstart;
    y = ystart;
    shake_intensity = lerp(shake_intensity, 0, 0.15);
    x = xstart + random_range(-shake_intensity, shake_intensity);
    y = ystart + random_range(-shake_intensity, shake_intensity);
}
