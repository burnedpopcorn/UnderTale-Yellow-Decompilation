switch (scene)
{
    case 0:
        with (actor_martlet)
        {
            action_sprite = true;
            sprite_index = spr_martlet_hammer;
            image_speed = 0.4;
        }
        
        audio_sound_gain(obj_radio.current_song, 0, 750);
        
        if (!audio_is_playing(mus_birdsofafeather) && audio_sound_get_gain(obj_radio.current_song) < 0.1)
        {
            audio_play_sound(mus_birdsofafeather, 20, 1);
            timer = 60;
            scene++;
        }
        
        break;
    
    case 1:
        if (!scr_timer())
            exit;
        
        with (actor_martlet)
            sprite_index = spr_martlet_hammer_getup;
        
        scene++;
        break;
    
    case 2:
        with (actor_martlet)
        {
            if (on_animation_end())
            {
                instance_create(x + 13, y, obj_martlet_bridge_note);
                sprite_index = spr_martlet_fly_away;
                image_speed = 0.3;
                other.scene++;
            }
        }
        
        break;
    
    case 3:
        with (actor_martlet)
        {
            if (floor(image_index) == 11 && obj_martlet_bridge_note.image_speed == 0)
            {
                audio_play_sound(snd_gun_hit, 1, 0);
                obj_martlet_bridge_note.image_speed = 0.3;
            }
            
            if (on_animation_end())
            {
                image_alpha = 0;
                image_speed = 0;
                other.scene++;
                other.timer = 60;
                scr_audio_fade_out(163, 500);
            }
        }
        
        break;
    
    case 4:
        if (!scr_timer())
            exit;
        
        audio_sound_gain(obj_radio.current_song, 1, 500);
        scr_cutscene_end();
        audio_sound_gain(snd_snowdin_bridge, 0.5, 1200);
        audio_sound_gain(mus_ambient_river, 1, 1200);
        global.snowdin_flag[17] = 1;
        instance_destroy();
        instance_destroy(actor_martlet);
        break;
}
