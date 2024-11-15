if (audio_is_playing(snd_mart_wind))
    audio_stop_sound(snd_mart_wind);

if (instance_exists(obj_battle_enemy_attack_dunebud_tumbleweeds_tumbleweed))
{
    with (obj_battle_enemy_attack_dunebud_tumbleweeds_tumbleweed)
        instance_destroy();
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
