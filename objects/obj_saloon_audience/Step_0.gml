if (crowd_animate == true)
{
    if (image_speed == 0)
    {
        audio_sound_gain(crowd_sound, 1, 250);
        image_speed = 0.2;
    }
    
    if (crowd_animate_interact_noloop == true && global.dialogue_open == false)
    {
        crowd_animate_interact_noloop = false;
        crowd_animate = false;
    }
}
else if (image_speed == 0.2)
{
    audio_sound_gain(crowd_sound, 0, 250);
    image_speed = 0;
    image_index = 0;
}
else
{
    if (global.route == 1 && global.sworks_flag[0] > 0)
        exit;
    
    if (scr_interact() && keyboard_multicheck_pressed(vk_nokey) && crowd_animate_interact_noloop == false)
    {
        scr_text();
        
        with (msg)
        {
            message[0] = "* (Everyone is wrapped up in#  conversation.)";
            message[1] = "* (Quite the popular spot!)";
        }
        
        crowd_animate = true;
        crowd_animate_interact_noloop = true;
    }
}
