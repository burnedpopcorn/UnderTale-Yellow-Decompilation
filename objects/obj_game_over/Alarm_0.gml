var game_mode;

generate = true;
game_mode = global.game_mode;

if (game_mode == "yellow")
{
    scr_audio_stop_sound(0);
    audio_sound_gain(mus_gameover_yellow, 1, 0);
    audio_sound_pitch(mus_gameover_yellow, 1);
    audio_play_sound(mus_gameover_yellow, 20, true);
}
else
{
    scr_audio_stop_sound(0);
    audio_sound_gain(mus_gameover, 1, 0);
    audio_sound_pitch(mus_gameover, 1);
    audio_play_sound(mus_gameover, 20, true);
}
