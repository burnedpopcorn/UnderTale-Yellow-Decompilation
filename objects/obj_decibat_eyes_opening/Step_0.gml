if (fade == true)
{
    image_alpha -= 0.1;
    
    if (image_alpha < 0)
        image_alpha = 0;
    
    if (image_alpha == 0)
        instance_destroy();
}

if (image_index >= 8 && image_speed != 0)
    image_speed = set_new_image_speed_value;

if (image_index >= 18 && no_loop_blinking_1 == false)
{
    audio_play_sound(snd_decibatblink, 20, 0);
    no_loop_blinking_1 = true;
}
else if (image_index >= 24 && no_loop_blinking_2 == false)
{
    audio_play_sound(snd_decibatblink, 20, 0);
    no_loop_blinking_2 = true;
}
