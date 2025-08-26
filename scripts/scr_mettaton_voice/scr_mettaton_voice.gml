function scr_mettaton_voice()
{
    var mettaton_voice_count = global.mettaton_voice_count;
    
    if (mettaton_voice_count == 1)
    {
        audio_stop_sound(snd_talk_mettaton_1);
        audio_play_sound(snd_talk_mettaton_1, 20, false);
    }
    else if (mettaton_voice_count == 3)
    {
        audio_stop_sound(snd_talk_mettaton_2);
        audio_play_sound(snd_talk_mettaton_2, 20, false);
    }
    else if (mettaton_voice_count == 5)
    {
        audio_stop_sound(snd_talk_mettaton_3);
        audio_play_sound(snd_talk_mettaton_3, 20, false);
    }
    else if (mettaton_voice_count == 7)
    {
        audio_stop_sound(snd_talk_mettaton_4);
        audio_play_sound(snd_talk_mettaton_4, 20, false);
    }
    else if (mettaton_voice_count == 9)
    {
        audio_stop_sound(snd_talk_mettaton_5);
        audio_play_sound(snd_talk_mettaton_5, 20, false);
    }
    else if (mettaton_voice_count == 11)
    {
        audio_stop_sound(snd_talk_mettaton_6);
        audio_play_sound(snd_talk_mettaton_6, 20, false);
    }
    else if (mettaton_voice_count == 13)
    {
        audio_stop_sound(snd_talk_mettaton_7);
        audio_play_sound(snd_talk_mettaton_7, 20, false);
    }
    else if (mettaton_voice_count == 15)
    {
        audio_stop_sound(snd_talk_mettaton_8);
        audio_play_sound(snd_talk_mettaton_8, 20, false);
    }
    else if (mettaton_voice_count == 17)
    {
        audio_stop_sound(snd_talk_mettaton_9);
        audio_play_sound(snd_talk_mettaton_9, 20, false);
    }
    
    global.mettaton_voice_count += 1;
    
    if (global.mettaton_voice_count > 18)
        global.mettaton_voice_count = 1;
}
