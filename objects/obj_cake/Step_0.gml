event_inherited();

if (scr_interact() && keyboard_multicheck_pressed(0))
{
    if (global.geno_complete[3] == true)
    {
        scr_text();
        
        with (msg)
            message[0] = "* (A cake in its cage.)";
    }
    else
    {
        scr_cutscene_start();
        waiter = 1;
    }
}

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        if (other.npc_flag == 1)
        {
            message[0] = "* (It's empty now.)";
            
            if (!global.dialogue_open)
            {
                scr_cutscene_end();
                other.waiter = 0;
            }
            
            exit;
        }
        
        message[0] = "* (You would like some Cake but#  you'd rather not alert Axis.)";
        message[1] = "* (Risk it?)";
        ch_msg = 1;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            if (scr_item("Cake"))
            {
                other.waiter = 2;
                global.dialogue_open = false;
            }
            else
            {
                message[2] = "* (Not enough space.)";
                global.cutscene = false;
                other.waiter = 0;
            }
        }
        
        if (outcome == 2)
        {
            message[2] = "* (Better safe than sorry.)";
            other.waiter = 0;
            global.cutscene = false;
        }
    }
}

if (waiter == 2)
{
    scr_audio_fade_out(obj_radio.current_song, 100);
    pain_sound = audio_play_sound(snd_chem_cake_take, 1, 0);
    waiter = 3;
}

if (waiter == 3)
{
    if (audio_is_playing(pain_sound))
        exit;
    else if (!alarm[0])
        alarm[0] = 30;
}
