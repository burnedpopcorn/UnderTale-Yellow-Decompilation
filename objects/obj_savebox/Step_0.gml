obj_pl.state = scr_frozen_state;

if (p1 == true && global.right_keyp)
{
    p1 = false;
    p2 = true;
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

if (p2 == true && global.left_keyp)
{
    p2 = false;
    p1 = true;
    audio_play_sound(snd_mainmenu_select, 1, 0);
}

if (keyboard_multicheck_pressed(vk_nokey) && ready == true)
{
    if (p1 == true)
    {
        audio_play_sound(snd_savedgame, 1, 0);
        color2 = 65535;
        
        if (global.current_hp_self < global.max_hp_self)
            global.current_hp_self = global.max_hp_self;
        
        global.save_count += 1;
        scr_savegame();
        alarm[0] = 1;
        p1 = false;
    }
    
    if (p2 == true)
    {
        statBox = true;
        audio_play_sound(snd_confirm, 1, 0);
    }
    
    if (color2 == 65535 && done == true)
    {
        statBox = true;
        audio_play_sound(snd_confirm, 1, 0);
    }
}

ready = true;
