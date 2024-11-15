audio_play_sound(snd_decibatbouncewave2, 1, 0);

if (attack_spray_state > 0)
    exit;

current_position += 1;

if (current_position > 2)
{
    attack_spray_state = 1;
    exit;
}

alarm[1] = 75;
