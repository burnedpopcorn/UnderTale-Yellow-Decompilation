if (global.flag[7] == true)
{
    if (solid == true)
    {
        image_speed = 0;
        image_index = 5;
        solid = false;
        dr = instance_create(260, 120, obj_doorway);
        
        with (dr)
        {
            nextroom = 28;
            xx = 410;
            yy = 860;
            image_xscale = 2.5;
            image_yscale = 1.25;
        }
    }
    
    exit;
}

if (keyboard_multicheck_pressed(0))
{
    if (scr_interact() == true)
    {
        timer = 1;
        obj_pl.state = scr_frozen_state;
    }
}

if ((image_speed == 0 && image_index == 0) && timer == 10)
{
    image_speed = 0.2;
    audio_play_sound(snd_tarpdrop, 1, 0);
}

if (image_index == 5 && image_speed == 0.2)
{
    image_speed = 0;
    image_index = 5;
}

if (timer >= 1 && timer < 60)
    timer++;

if (timer == 60)
{
    obj_pl.state = scr_normal_state;
    global.flag[7] = true;
}
