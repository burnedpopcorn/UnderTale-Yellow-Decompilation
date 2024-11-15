if (active == false)
{
    scr_cutscene_start();
    active = true;
    audio_sound_gain(obj_radio.current_song, 0, 500);
}
