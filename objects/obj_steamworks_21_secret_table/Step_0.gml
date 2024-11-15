if (scr_interact() && keyboard_multicheck_pressed(0) && sprite_index != spr_steamworks_21_table_secret_2)
{
    audio_play_sound(snd_steamworks_21_monitor, 1, 0);
    sprite_index = spr_steamworks_21_table_secret_2;
    image_index = 0;
    image_speed = 1;
}
