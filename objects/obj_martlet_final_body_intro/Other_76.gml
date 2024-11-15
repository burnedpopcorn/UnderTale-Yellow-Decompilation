if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "martlet_syringe":
            audio_play_sound(snd_monster_damage_hit_critical, 1, 0);
            scr_screenshake_battle(6, 2);
            instance_create_depth(x, y, depth - 1, obj_martlet_final_transformation_effect);
            instance_create_depth(x - 24, y - 100, depth - 2, obj_martlet_final_syringe);
            break;
        
        case "martlet_inject":
            audio_play_sound(snd_hurt, 1, 0);
            scr_screenshake_battle(6, 2);
            break;
    }
}
