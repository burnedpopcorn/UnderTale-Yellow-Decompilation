if (scr_interact() && keyboard_multicheck_pressed(vk_nokey) && image_index == 0)
{
    audio_play_sound(snd_screenshake, 1, 0);
    image_index = 1;
    obj_flowey_world_controller.scene += 1;
    scr_cutscene_start();
}
