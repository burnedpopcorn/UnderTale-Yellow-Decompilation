if (file_exists("Save.sav"))
{
    ini_open("Save.sav");
    global.fighting_flowey = ini_read_real("Misc2", "10", 0);
    ini_close();
    
    if (global.fighting_flowey > 0)
    {
        scr_loadgame();
        exit;
    }
}

if (file_exists("Save02.sav"))
{
    ini_open("Save02.sav");
    global.game_finished_pacifist = ini_read_real("00", "02", 0);
    global.game_finished_pacifist_kill = ini_read_real("00", "03", 0);
    global.game_finished_murder = ini_read_real("00", "04", 0);
    ini_close();
    
    if ((global.game_finished_pacifist + global.game_finished_pacifist_kill + global.game_finished_murder) > 0)
    {
        room = rm_menu_flowey;
        exit;
    }
}

instance_create(0, 0, obj_intro_fade_screen);
instance_create(57, 170, obj_intro_text);
audio_sound_gain(mus_intro, 1, 0);
audio_play_sound(mus_intro, 1, 0);
