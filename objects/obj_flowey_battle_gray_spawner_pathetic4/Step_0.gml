if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(1);
        break;
    
    case 1:
        audio_play_sound(snd_undertale_swoosh, 1, 0);
        bul.speed = 8;
        bul.alarm[0] = 60;
        scene++;
        break;
    
    case 2:
        cutscene_wait(3);
        break;
    
    case 3:
        instance_destroy();
        break;
}
