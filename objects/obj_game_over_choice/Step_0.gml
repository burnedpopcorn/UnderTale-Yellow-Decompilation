var menu_option_number;

if (no_loop)
    exit;

if (image_alpha < 1)
{
    image_alpha += 0.2;
    exit;
}

menu_option_number = 1;

if (retry_enabled)
    menu_option_number += 1;

if (rhythm_enabled || autofire_enabled)
    menu_option_number += 1;

if (global.down_keyp && menu_option_number > 1)
{
    if (menu_option_selected < menu_option_number)
        menu_option_selected += 1;
    else
        menu_option_selected = 1;
    
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

if (global.up_keyp && menu_option_number > 1)
{
    if (menu_option_selected > 1)
        menu_option_selected -= 1;
    else
        menu_option_selected = menu_option_number;
    
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

if (keyboard_multicheck_pressed(0))
{
    if (menu_option_selected == 1)
    {
        instance_create(0, 0, obj_death_screen_fade_out_retry_screen);
        no_loop = true;
        audio_sound_gain(mus_gameover_yellow, 0, 1200);
    }
    else if (menu_option_selected == 2)
    {
        instance_create(0, 0, obj_death_screen_fade_out_screen);
        no_loop = true;
        audio_sound_gain(mus_gameover_yellow, 0, 1200);
    }
    else if (menu_option_selected == 3)
    {
        if (rhythm_enabled)
        {
            if (global.option_autorhythm == true)
                global.option_autorhythm = false;
            else
                global.option_autorhythm = true;
        }
        
        if (autofire_enabled)
        {
            if (global.option_autoshoot == true)
                global.option_autoshoot = false;
            else
                global.option_autoshoot = true;
        }
        
        audio_play_sound(snd_confirm, 1, 0);
    }
}
