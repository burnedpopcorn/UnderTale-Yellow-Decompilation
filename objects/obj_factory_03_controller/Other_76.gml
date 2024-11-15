if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "factory02_axis_falls":
            audio_play_sound(snd_axis_trash_can_hit, 1, 0);
            scr_screenshake(8, 1);
            break;
        
        case "factory02_power_disconnect":
            instance_create_depth(obj_axis_npc.x, obj_axis_npc.y, -room_height - 100, obj_factory_03_axis_flashlight);
            break;
        
        case "ceroba_punch":
            scr_screenshake(3, 1);
            audio_play_sound(snd_undertale_explosion, 1, 0);
            audio_stop_sound(cutscene_music);
            
            with (obj_steamworks_factory_02_face)
            {
                sprite_index = spr_factory_03_face_shatter;
                image_speed = 1;
                image_index = 0;
            }
            
            break;
    }
}
