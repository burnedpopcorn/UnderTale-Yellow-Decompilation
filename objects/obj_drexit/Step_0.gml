if (exitCutscene == 1)
{
    global.cutscene = true;
    
    with (obj_pl)
    {
        image_speed = 0.2;
        vspeed = -0.5;
    }
    
    if (waiter == 0)
    {
        alarm[0] = 30;
        alarm[1] = 275;
        waiter = 1;
    }
    
    if (fade == true)
        fadeAlpha += 0.006;
}

if (exitCutscene == 2)
{
    if (fadeAlpha > 0)
    {
        fadeAlpha -= 0.03;
    }
    else
    {
        scr_cutscene_end();
        instance_destroy();
    }
}
