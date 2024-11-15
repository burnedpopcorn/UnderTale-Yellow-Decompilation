var mus;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (draw_alpha > 0)
            draw_alpha -= 0.03;
        else
            scene++;
        
        break;
    
    case 1:
        cutscene_advance();
        break;
    
    case 2:
        cutscene_wait(3.5);
        break;
    
    case 3:
        if (global.route == 3)
        {
            mus = audio_play_sound(mus_greenhouse, 20, 1);
            audio_sound_pitch(mus, 0.3);
        }
        else
        {
            mus = audio_play_sound(mus_kanako, 1, 0);
        }
        
        scene++;
        break;
}

if (irandom(100) == 1)
    monumber += irandom_range(1, 100);

monumber_current = lerp(monumber_current, monumber, 0.15);
