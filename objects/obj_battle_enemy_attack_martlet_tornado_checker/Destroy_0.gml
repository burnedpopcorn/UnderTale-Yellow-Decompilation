if (audio_is_playing(snd_mart_wind))
    audio_stop_sound(snd_mart_wind);

with (obj_battle_enemy_attack_martlet_tornado_feather)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
{
    if (instance_exists(obj_martlet_body) && global.enemy_mode == 5 && global.turns_passed == 4)
        script_execute(scr_start_during_attack_dialogue_martlet_pacifist);
    else
        event_user(0);
}
