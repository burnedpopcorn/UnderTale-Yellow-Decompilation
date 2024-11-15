event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        portrait = false;
        
        switch (other.npc_flag)
        {
            case 0:
                message[0] = "* You know why they told me to go#  on this vacation:";
                message[1] = "* Well, 'cause I come off as#  stressed, but you know why that#  is:";
                message[2] = "* I have a theory see:";
                message[3] = "* 'Cause there are just so many#  things in life to worry about:";
                message[4] = "* Work, an' laundry, an-an'#  imminent starvation, an' so on:";
                message[5] = "* Those are important back home,#  but here:";
                message[6] = "* Still important!";
                message[7] = "* Monsters pretend they're not#  though, an' you know what that#  is:";
                message[8] = "* Despicable, irresponsible,#  shameful behavior!";
                message[9] = "* You know how much part I'll#  have in it:";
                message[10] = "* None. Zip, zero, zilch:";
                message[11] = "* An' that's how much you should#  have too!";
                other.npc_flag += 1;
                break;
            
            case 1:
                message[0] = "* I just realized something:";
                message[1] = "* This, this anti-stress thing,#  you know what this is:";
                message[2] = "* The downfall of the Underground,#  that's what it is, see:";
                message[3] = "* Soon Monsters will stop doing#  the important things:";
                message[4] = "* The work, an' laundry, an'#  such:";
                message[5] = "* Completely undone, an' you know#  why:";
                message[6] = "* Too much to worry about, that's#  what they'll say!";
                message[7] = "* Toxic, toxic behavior!";
                other.npc_flag += 1;
                break;
            
            case 2:
                message[0] = "* Can't wait until this vacation#  is over, you see:";
                message[1] = "* At this altitude:";
                message[2] = "* So much to worry about,#  like-like:";
                message[3] = "* Dehydration, you know what that#  causes:";
                message[4] = "* Altitude sickness!";
                message[5] = "* Now don't you go drinking that#  coffee:";
                message[6] = "* Dries you right out!";
                break;
        }
    }
}
