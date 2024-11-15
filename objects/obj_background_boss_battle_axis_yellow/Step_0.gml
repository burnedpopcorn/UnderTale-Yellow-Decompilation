if (global.current_hp_enemy <= 0)
    fade_out = true;

if (fade_out == true)
{
    if (overlay_alpha < 1)
        overlay_alpha += 0.15;
    else
        overlay_alpha = 1;
}
