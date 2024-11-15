if (state == 0)
{
    if (draw_alpha < 1)
        draw_alpha += 0.15;
    else if (!alarm[0])
        alarm[0] = 30;
}

if (state == 1)
{
    if (draw_alpha > 0)
    {
        draw_alpha -= 0.2;
    }
    else
    {
        if (obj_steamworks_manta.manta_has_passengers == false)
            scr_cutscene_end();
        
        instance_destroy();
    }
}
