with (obj_battle_enemy_attack_starlo_guns_horizontal_gun)
    instance_destroy();

with (obj_battle_enemy_attack_starlo_bullet_rain_bullet)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);

instance_create_depth(320, 90, 99999, obj_background_starlo_battle_yellow);
audio_sound_gain(mus_showdown, 1, 0);
audio_sound_pitch(mus_showdown, 1);
audio_play_sound(mus_showdown, 20, true);
