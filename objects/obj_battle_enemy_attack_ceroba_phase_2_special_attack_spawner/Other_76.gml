var modif, battle_box;

if (live_call())
    return global.live_result;

if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "ceroba_bullet_launch":
            modif = obj_ceroba_body_pacifist_phase_2.image_xscale;
            instance_create_depth(obj_ceroba_body_pacifist_phase_2.x + (165 * modif), obj_ceroba_body_pacifist_phase_2.y - 238, -999, obj_battle_ceroba_special_attack_red_bullet);
            audio_play_sound(snd_cinematiccut, 1, 0);
            break;
        
        case "ceroba_special_attack_warning":
            battle_box = 3154;
            instance_create_depth(battle_box.bbox_left + 48, battle_box.bbox_bottom + 20, -100, obj_ceroba_attack_fire_pillar_top_special);
            instance_create_depth(battle_box.bbox_right - 48, battle_box.bbox_bottom + 20, -100, obj_ceroba_attack_fire_pillar_top_special);
            break;
        
        case "ceroba_special_attack_impact":
            audio_play_sound(snd_undertale_explosion, 1, 0);
            scr_screenshake_battle(6, 2);
            instance_destroy(obj_ceroba_pillar_warning_special);
            break;
    }
}
