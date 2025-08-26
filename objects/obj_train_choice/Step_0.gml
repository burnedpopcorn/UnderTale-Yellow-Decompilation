if (selection_confirmed)
{
    instance_destroy();
    exit;
}

if (fade_out == true)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.15;
    else
        selection_confirmed = true;
    
    exit;
}

if (draw_alpha < 1)
{
    draw_alpha += 0.15;
    exit;
}

if (global.right_keyp)
{
    if (selection == 0)
        selection = 1;
    else
        selection = 0;
    
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

if (global.left_keyp)
{
    if (selection == 1)
        selection = 0;
    else
        selection = 1;
    
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

if (keyboard_multicheck_pressed(vk_nokey) || train_timer == 0)
{
    audio_play_sound(snd_confirm, 1, 0);
    fade_out = true;
}

if (train_timer > 0)
    train_timer -= 1;
