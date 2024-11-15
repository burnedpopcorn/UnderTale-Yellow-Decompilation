event_inherited();

if (interact)
    waiter = 1;

if (waiter == 1)
{
    if (obj_pl.direction == 90)
    {
        scr_text();
        
        with (msg)
        {
            message[0] = "* Chujin Ketsukane ";
            message[1] = "* The best of us.";
        }
        
        waiter = 0;
    }
    else if (obj_pl.direction == 270)
    {
        if (npc_flag == 0)
        {
            scr_text();
            
            with (msg)
            {
                if (message_current == 0)
                {
                    ch_msg = 1;
                    ch[1] = "Yes";
                    ch[2] = "No";
                }
                
                message[0] = "* (You notice a subtle indention#  in the dirt behind the#  gravestone.)";
                message[1] = "* (Inspect further?)";
                
                if (outcome == 1)
                {
                    if (message_current == 1)
                    {
                        message[2] = "* (You dig into the ground with#  your hands until you hit#  something solid.)";
                        message[3] = "* (It's a videotape with a blank#  label.)";
                        message[4] = "* (Take it?)";
                        ch_msg = 4;
                        ch[1] = "Yes";
                        ch[2] = "No";
                    }
                    else if (scr_item("Videotape"))
                    {
                        message[5] = "* (You got a Videotape!)";
                        other.npc_flag += 1;
                    }
                    else
                    {
                        message[5] = "* (Not enough space.)";
                        audio_play_sound(snd_fail, 1, 0);
                        other.waiter = 0;
                    }
                }
                
                if (outcome == 2)
                {
                    message[2] = "* (Disturbing a resting place#  like this might be illegal.)";
                    other.waiter = 0;
                }
            }
        }
        else
        {
            waiter = 0;
        }
    }
}

image_alpha = 0;
