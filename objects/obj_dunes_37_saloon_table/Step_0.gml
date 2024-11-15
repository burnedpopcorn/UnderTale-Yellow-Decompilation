if (interact && waiter == 0)
{
    if (global.route == 3)
    {
        scr_text();
        
        with (msg)
            message[0] = "* (An abandoned table.)";
    }
    else
    {
        waiter = 1;
    }
}

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        message[0] = "* (A table for three with a few#  empty glasses.)";
        
        if (other.npc_flag == 1)
        {
            other.waiter = 0;
            exit;
        }
        
        message[1] = "* (A few G's from a past tip#  catch your eye.)";
        message[2] = "* (Take it?)";
        ch_msg = 2;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            message[3] = "* (You got 10G! Happy?)";
            audio_play_sound(snd_success, 1, 0);
            other.npc_flag = 1;
            other.waiter = 0;
        }
        
        if (outcome == 2)
        {
            message[3] = "* (It doesn't belong to you#  anyway.)";
            other.waiter = 0;
        }
    }
}

image_alpha = 0;
