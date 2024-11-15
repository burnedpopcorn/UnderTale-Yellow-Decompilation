if (global.dunes_flag[4] == 2)
{
    image_speed = 0;
    image_index = image_number - 1;
    scr_cutscene_start();
    instance_create(100, 155, obj_npc_clover_dunes_13);
    exit;
}

if (obj_pl.x < 280)
{
    scr_cutscene_start();
    image_index = image_number - 1;
    image_speed = -0.3;
    obj_pl.image_alpha = 1;
    audio_play_sound(snd_elevator_open, 1, 0);
}
else
{
    image_speed = 0;
}
