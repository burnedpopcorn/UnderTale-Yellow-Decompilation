if (keyboard_multicheck_pressed(0) && scr_interact())
{
    if (global.route == 1 && instance_exists(obj_steamworks_21_controller) && obj_steamworks_21_controller.scene >= 47 && obj_steamworks_21_controller.scene <= 50)
    {
        scr_cutscene_start();
        waiter = 1;
    }
}

if (waiter == 1)
{
    if (image_index == 0 && obj_pl.image_alpha > 0)
    {
        audio_play_sound(snd_undertale_snap, 1, 0);
        image_index = 1;
    }
    
    if (obj_pl.image_alpha > 0)
        obj_pl.image_alpha -= 0.2;
    
    if (obj_pl.image_alpha <= 0 && image_index == 1)
    {
        audio_play_sound(snd_undertale_thud, 1, 0);
        image_index = 0;
        waiter = 2;
    }
}

if (waiter == 3)
{
    if (image_index == 0 && obj_pl.image_alpha < 1)
    {
        audio_play_sound(snd_undertale_snap, 1, 0);
        image_index = 1;
    }
    
    if (obj_pl.image_alpha < 1)
        obj_pl.image_alpha += 0.2;
    
    if (obj_pl.image_alpha >= 1)
    {
        audio_play_sound(snd_undertale_thud, 1, 0);
        image_index = 0;
        scr_cutscene_end();
        waiter = 0;
    }
}
