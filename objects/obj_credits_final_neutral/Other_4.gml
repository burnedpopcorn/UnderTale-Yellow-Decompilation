if (live_call())
    return global.live_result;

switch (room)
{
    case rm_hotland_roof:
        camera_set_view_speed(view_camera[0], -1, -1);
        instance_destroy(obj_hotland_roof_light_controller);
        instance_destroy(obj_hotland_roof_cutscene_neutral);
        instance_destroy(obj_martlet_npc);
        break;
    
    case rm_steamworks_04:
        instance_destroy(obj_steamworks_04_controller);
        audio_stop_sound(snd_machinery);
        break;
    
    case rm_dunes_37:
        instance_destroy(obj_wild_east_cutscene_manager);
        break;
    
    case rm_snowdin_14_yellow:
        instance_destroy(obj_determination);
        break;
    
    case rm_darkruins_16:
        instance_destroy(obj_determination);
        instance_destroy(obj_dalv);
        break;
}

if (camera_target_current <= (array_length(target_room) - 1))
{
    camera_set_view_target(view_camera[0], -4);
    camera_set_view_pos(view_camera[0], camera_start_x[camera_target_current] - 160, camera_start_y[camera_target_current] - 120);
}
