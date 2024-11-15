if (keyboard_multicheck_pressed(0) && scr_interact())
{
    scr_cutscene_start();
    object_is_active = true;
    audio_sound_gain(obj_radio.current_song, 0, 300);
    audio_play_sound(snd_knock_beautiful, 1, 0);
    timer = 60;
}

if (object_is_active == false)
    exit;

if (scr_timer())
{
    global.cutscene = false;
    audio_sound_gain(obj_radio.current_song, 1, 300);
    scr_text();
    
    with (msg)
        message[0] = "* Sorry! I'm not home!";
    
    object_is_active = false;
}
