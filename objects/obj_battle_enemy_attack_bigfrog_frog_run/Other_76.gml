if (live_call())
    return global.live_result;

if (layer_instance_get_instance(ds_map_find_value(event_data, "element_id")) == id && ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "frog_jump":
            if (!audio_is_playing(snd_playerjump))
            {
                obj_battle_enemy_attack_macro_tongue_attack_creator.attack_delay -= 1;
                audio_play_sound(snd_playerjump, 1, 0);
            }
            
            hspeed = jump_speed * image_xscale;
            break;
    }
}
