switch (scene)
{
    case 0:
        cutscene_wait(0.5);
        break;
    
    case 1:
        image_speed = 1;
        shake_timer = 1;
        audio_play_sound(snd_ceroba_shield_break_2, 1, 0);
        scene++;
        break;
}
