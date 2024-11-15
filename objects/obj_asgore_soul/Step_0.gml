if (live_call())
    return global.live_result;

switch (scene)
{
    case 1:
        shake_int += 0.01;
        direction = point_direction(x, y, obj_player_npc.x, obj_player_npc.y);
        cutscene_wait(3.5);
        break;
    
    case 2:
        circle_alpha = 1;
        shake_int = 0;
        x = xstart;
        y = ystart;
        audio_play_sound(snd_undertale_flash, 1, 0);
        cutscene_advance();
        break;
    
    case 3:
        cutscene_wait(1.5);
        break;
    
    case 4:
        approach_int += 0.1;
        
        if (place_meeting(x, y, obj_player_npc))
        {
            approach_int = 0;
            cutscene_advance();
            image_alpha = 0;
            clover_overlay_alpha = 1;
            audio_play_sound(snd_heal, 1, 0);
        }
        
        break;
    
    case 5:
        if (clover_overlay_alpha <= 0)
            instance_destroy();
        
        break;
}

if (circle_alpha > 0)
{
    circle_alpha -= 0.1;
    circle_radius += 5;
}

if (clover_overlay_alpha > 0)
    clover_overlay_alpha -= 0.15;
else
    clover_overlay_alpha = 0;

if (approach_int > 0)
    speed = approach_int;
