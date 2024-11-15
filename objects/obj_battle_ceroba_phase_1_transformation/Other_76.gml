switch (ds_map_find_value(event_data, "message"))
{
    case "ceroba_bullet_right":
        audio_play_sound(snd_cinematiccut, 1, 0);
        instance_create_depth(520, 130, -999, obj_battle_ceroba_red_bullet);
        break;
    
    case "ceroba_bullet_left":
        audio_play_sound(snd_cinematiccut, 1, 0);
        instance_create_depth(128, 130, -999, obj_battle_ceroba_red_bullet);
        break;
    
    case "impact_sound":
        instance_create_depth(0, 0, -1, obj_ceroba_phase_2_red_shader);
        audio_play_sound(snd_undertale_impact, 1, 0);
        break;
    
    case "ceroba_transformation_effect":
        instance_create_depth(obj_ceroba_body_pacifist_phase_1.x, obj_ceroba_body_pacifist_phase_1.y, -1, obj_ceroba_phase_1_transformation_effect);
        break;
}
