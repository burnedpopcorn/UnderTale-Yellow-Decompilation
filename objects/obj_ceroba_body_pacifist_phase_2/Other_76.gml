var scream_rings;

if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "ceroba_ending_sounds":
            audio_play_sound(snd_ceroba_defeated_sounds, 1, 0);
            break;
        
        case "ceroba_charge":
            audio_play_sound(snd_ceroba_charge, 1, 0);
            break;
        
        case "cloak_sound":
            audio_play_sound(snd_ceroba_cloak, 1, 0);
            break;
        
        case "ceroba_scream":
            scr_screenshake_battle(110, 1);
            scream_rings = instance_create_depth(x, y - 100, depth + 10, obj_ceroba_scream_ring_spawner);
            scream_rings.alarm[0] = 60;
            global.battle_music = audio_play_sound(mus_mothers_love_phase_3, 20, true);
            obj_petal_generator_phase_2.fade_out = false;
            obj_petal_generator_phase_2.petals_enabled = true;
            audio_play_sound(snd_ceroba_scream, 1, 0);
            audio_play_sound(snd_ceroba_yell, 1, 0);
            break;
        
        case "ceroba_punch_floor":
            scr_screenshake_battle(5, 2);
            audio_play_sound(snd_undertale_impact, 1, 0);
            break;
        
        case "ceroba_retransform":
            audio_play_sound(snd_ceroba_retransform, 1, 0);
            break;
    }
}
