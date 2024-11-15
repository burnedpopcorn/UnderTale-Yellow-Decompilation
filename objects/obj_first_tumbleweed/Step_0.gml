var rumble, roll_speed;

if (obj_pl.x > 440 && active == 0)
{
    active = 1;
    scr_cutscene_start();
    audio_sound_gain(obj_radio.bgm, 0, 300);
    
    if (!audio_is_playing(snd_rumble))
    {
        rumble = audio_play_sound(snd_rumble, 1, 1);
        audio_sound_gain(rumble, 0.75, 0);
    }
}

if (active == 1)
{
    image_alpha += 0.025;
    
    if (image_alpha < 1)
        exit;
    
    scr_audio_fade_out(261, 100);
    active = 2;
    image_speed = 0.3;
}

if (active == 2)
{
    roll_speed = 2.5;
    image_speed = 0.4;
    
    if ((y < 105 && y > 35) || y > 220)
    {
        roll_speed = 4.5;
        image_index = 0;
        image_speed = 0;
        
        if (y > 380)
            image_alpha -= 0.1;
    }
    
    if (y >= 130 && audio_played == false)
    {
        audio_play_sound(snd_mart_impact_2, 1, 0);
        audio_played = true;
    }
    
    if (y > 240)
        depth = 10000;
    
    y += roll_speed;
    
    if (y >= room_height)
    {
        if (!alarm[1])
            alarm[1] = 45;
    }
}
