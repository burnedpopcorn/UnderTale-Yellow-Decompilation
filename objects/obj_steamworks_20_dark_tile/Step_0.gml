if (global.sworks_flag[11] == false && obj_pl.x <= (x - 100))
    fade_out = true;

if (fade_out && image_alpha < 1)
{
    image_alpha += 0.15;
    
    if (image_alpha >= 1)
        global.sworks_flag[11] = true;
}
