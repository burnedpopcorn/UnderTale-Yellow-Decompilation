if (live_call())
    return global.live_result;

countdown_current -= 1;

if (countdown_current > 0)
{
    audio_play_sound(snd_chem_countdown, 1, 0);
    alarm[0] = 30;
}
else
{
    if (puzzle_music == 0)
    {
        puzzle_music = audio_play_sound(mus_mixin_it_up, 1, 1);
        audio_sound_pitch(puzzle_music, 1);
        
        if (global.route == 3)
        {
            alarm[4] = irandom_range(60, 120);
            audio_sound_pitch(puzzle_music, random_range(0.75, 1.25));
        }
    }
    
    audio_play_sound(snd_chem_go, 1, 0);
    draw_puzzle_layer = true;
    alarm[1] = 30;
}
