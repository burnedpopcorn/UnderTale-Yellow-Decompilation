var xx, yy;

if (obj_puzzle1.done == true || !instance_exists(obj_pl))
    exit;

if (keyboard_multicheck_pressed(0))
{
    if (scr_interact() == true)
    {
        xx = obj_pl.x + (64 * cos(degtorad(obj_pl.direction)));
        yy = obj_pl.y - (64 * sin(degtorad(obj_pl.direction)));
        
        if (collision_line_first(obj_pl.x, obj_pl.y, xx, yy, id, false, false))
        {
            if (obj_puzzle1.turn == 0)
            {
                if (row == 3)
                {
                    audio_play_sound(snd_switch, 1, 0);
                    image_index = 1;
                    obj_puzzle1.turn = 1;
                }
                else
                {
                    audio_play_sound(snd_fail, 1, 0);
                }
            }
            else if (obj_puzzle1.turn == 1)
            {
                if (row == 1)
                {
                    if (image_index == 0)
                    {
                        audio_play_sound(snd_switch, 1, 0);
                        image_index = 1;
                        obj_puzzle1.turn = 2;
                    }
                }
                else
                {
                    audio_play_sound(snd_fail, 1, 0);
                    obj_puzzle1.turn = 0;
                    obj_lever.image_index = 0;
                    obj_spikes.image_index = 0;
                }
            }
            else if (obj_puzzle1.turn == 2)
            {
                if (row == 2)
                {
                    if (image_index == 0)
                    {
                        audio_play_sound(snd_switch, 1, 0);
                        image_index = 1;
                        obj_puzzle1.turn = 3;
                    }
                }
                else
                {
                    audio_play_sound(snd_fail, 1, 0);
                    obj_puzzle1.turn = 0;
                    obj_lever.image_index = 0;
                    obj_spikes.image_index = 0;
                }
            }
        }
    }
}

if (image_index == 1)
{
    if (row == 1)
    {
        with (obj_spikes)
        {
            if (row == 1)
                image_index = 1;
        }
    }
    
    if (row == 2)
    {
        with (obj_spikes)
        {
            if (row == 2)
                image_index = 1;
        }
    }
    
    if (row == 3)
    {
        with (obj_spikes)
        {
            if (row == 3)
                image_index = 1;
        }
    }
}
else if (image_index == 0)
{
    if (row == 1)
    {
        with (obj_spikes)
        {
            if (row == 1)
                image_index = 0;
        }
    }
    
    if (row == 2)
    {
        with (obj_spikes)
        {
            if (row == 2)
                image_index = 0;
        }
    }
    
    if (row == 3)
    {
        with (obj_spikes)
        {
            if (row == 3)
                image_index = 0;
        }
    }
}
