if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    scr_cutscene_start();
    audio_play_sound(snd_mansion_slidedoor_open, 1, 0);
    image_speed = 1;
}
