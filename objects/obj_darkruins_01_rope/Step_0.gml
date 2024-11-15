if (floor(image_index) == 2)
{
    if (!audio_is_playing(snd_tarpdrop))
        audio_play_sound(snd_tarpdrop, 1, 0);
}

if (keyboard_multicheck_pressed(0) && scr_interact() && waiter == 0)
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        message[0] = "* (Climb the rope?)";
        ch_msg = 0;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            scr_cutscene_start();
            other.waiter = 2;
            other.alarm[0] = 15;
            global.dialogue_open = false;
        }
        
        if (outcome == 2)
        {
            global.dialogue_open = false;
            other.waiter = 0;
        }
    }
}

if (image_index >= (image_number - image_speed) && image_speed > 0)
{
    scr_cutscene_end();
    image_speed = 0;
    image_index = image_number - 1;
}

if (waiter == 3)
{
    if (clover_image_index < sprite_get_number(spr_clover_climb))
        clover_image_index += 0.2;
    else
        clover_image_index = 0.2;
    
    if (clover_y > 60)
    {
        clover_y -= 1;
    }
    else
    {
        audio_play_sound(snd_flowey_glitch_yellow, 1, 0);
        waiter = 4;
        alarm[1] = 3;
        exit;
    }
}
