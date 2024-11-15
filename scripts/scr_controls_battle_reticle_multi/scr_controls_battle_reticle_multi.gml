function scr_controls_battle_reticle_multi()
{
    if (circle_current < circle_count)
    {
        if (outline[circle_current] > 0)
            key_select = keyboard_multicheck_pressed(0);
        else
            key_select = 0;
    }
}
