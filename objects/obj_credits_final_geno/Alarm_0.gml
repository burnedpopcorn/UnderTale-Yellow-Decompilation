current_slide += 1;

if (current_slide == 1)
    audio_play_sound(mus_intronoise, 1, 0);

if (current_slide >= 12)
    alarm[1] = 60;
else
    alarm[0] = advance_timer;
