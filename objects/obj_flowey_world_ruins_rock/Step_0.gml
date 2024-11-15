if (place_meeting(x - 1, y, obj_pl) || place_meeting(x + 1, y, obj_pl))
{
    x += (sign(x - obj_pl.x) * 3);
    x = clamp(x, xstart, 580);
}

if (x >= 580 && noloop == false)
{
    audio_play_sound(snd_screenshake, 1, 0);
    image_index = 1;
    obj_flowey_world_controller.scene += 1;
    obj_spikes_flowey_world.image_index = 1;
    scr_cutscene_start();
    noloop = true;
}
