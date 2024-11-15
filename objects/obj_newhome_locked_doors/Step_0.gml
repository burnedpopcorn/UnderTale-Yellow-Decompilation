event_inherited();

if (interact)
{
    if (!audio_is_playing(snd_locked_door))
        audio_play_sound(snd_locked_door, 1, 0);
    
    if (global.hotland_flag[13] == 0 && global.route != 3 && global.hotland_flag[10] == 0)
    {
        scr_cutscene_start();
        alarm[0] = 10;
        global.hotland_flag[13] = 1;
    }
}

if (waiter == 1)
{
    global.cutscene = false;
    scr_text();
    
    with (msg)
    {
        sndfnt = 102;
        message[0] = "* Hmm... \t";
        message[1] = "* It is rather late isn't#  it?";
        message[2] = "* Narrows down the#  locations they could've#  gone at least.";
        prt[0] = 311;
        prt[1] = 324;
        prt[2] = 321;
    }
    
    waiter = 0;
}
