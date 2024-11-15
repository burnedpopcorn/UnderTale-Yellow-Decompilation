counter += image_speed;
sound_play_noloop = false;

switch (counter)
{
    case 3.2:
    case 5.6:
    case 8:
        with (obj_attack_warning_exclamation_mark)
        {
            if (sound_play_noloop == true)
                exit;
        }
        
        audio_play_sound(snd_bullet_warning, 20, 0);
        sound_play_noloop = true;
        break;
}
