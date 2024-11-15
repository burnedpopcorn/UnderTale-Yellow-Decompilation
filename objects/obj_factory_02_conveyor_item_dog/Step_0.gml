if (live_call())
    return global.live_result;

if (destroy_self > 0)
{
    if (stage == 3)
    {
        obj_ceroba_npc.npc_direction = "right";
        obj_ceroba_npc.action_sprite = false;
    }
    
    if (destroy_self == 1)
    {
        vspeed = -3;
        gravity = 0.25;
        destroy_self = 2;
    }
    else
    {
        if (image_alpha <= 0)
            instance_destroy();
        
        image_angle += 10;
        image_alpha -= 0.1;
    }
    
    exit;
}

switch (scene)
{
    case 0:
        if (x <= 395)
        {
            hspeed = 0;
            cutscene_wait(0.5);
        }
        
        break;
    
    case 1:
        sprite_index = spr_dog_jump;
        gravity = 0.5;
        vspeed = -6;
        hspeed = -1;
        depth = -999;
        audio_play_sound(snd_undertale_pombark, 1, 0);
        audio_play_sound(snd_playerjump, 1, 0);
        cutscene_advance();
        break;
    
    case 2:
        if (y >= 660)
        {
            sprite_index = spr_dog_walk;
            vspeed = 0;
            hspeed = 0;
            gravity = 0;
            audio_play_sound(snd_mart_impact_2, 1, 0);
            depth = -y;
            scene++;
        }
        
        break;
    
    case 3:
        cutscene_wait(1.5);
        break;
    
    case 4:
        image_xscale = -1;
        hspeed = 5;
        audio_play_sound(snd_undertale_pombark, 1, 0);
        cutscene_advance();
        break;
    
    case 5:
        cutscene_wait(5);
        break;
    
    case 6:
        instance_destroy();
        break;
}

vspeed += gravity;
x += hspeed;
y += vspeed;
