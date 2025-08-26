if (window == 0)
{
    if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
        window = 1;
}

if (window == 1)
{
    scr_text();
    
    with (msg)
    {
        message[0] = "* (Pick up the Dimensional#  Satchel?)";
        ch_msg = 0;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            message[1] = "* (You got the Dimensional#  Satchel!)";
            global.player_has_satchel = true;
            audio_play_sound(snd_success, 1, 0);
            instance_destroy(other);
        }
        
        if (outcome == 2)
        {
            global.dialogue_open = false;
            other.window = 0;
        }
    }
}
