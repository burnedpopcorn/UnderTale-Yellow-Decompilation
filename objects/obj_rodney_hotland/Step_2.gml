if (interact)
{
    if (global.hotland_flag[1] > 0 && global.party_member != -4)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* (We need to stay#  focused.)";
            message[1] = "* (Let's not bother#  others with our#  problems.)";
            prt[0] = spr_martlet_head_moderate;
            prt[1] = spr_martlet_head_sad;
        }
    }
    else
    {
        waiter = 1;
    }
}

if (waiter == 1)
{
    scr_text();
    
    if (!instance_exists(obj_dialoguebox_dummy))
        instance_create(x, y, obj_dialoguebox_dummy);
    
    talk = 1;
    
    switch (other.npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                message[0] = "* What's up?";
                message[1] = "* You enjoying the tune we're#  currently bangin' out?";
                message[2] = "* Hope you are 'cause it's the#  only one we're playing tonight.";
                message[3] = "* No requests this time, sorry#  kid.";
                other.npc_flag += 1;
                other.waiter = 0;
            }
            
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                message[0] = "* You might be confused why our#  instruments sound different#  from the usual.";
                message[1] = "* Just the sound system this#  place provides. Different mix.#  Out of our hands.";
                message[2] = "* Still a vibe, though.";
                other.npc_flag += 1;
                other.waiter = 0;
            }
            
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                message[0] = "* Good luck on the rest of your#  journey, human.";
                message[1] = "* You've come a long way.";
                other.waiter = 0;
            }
            
            break;
    }
}

if (!instance_exists(obj_dialoguebox_dummy) && talk == true)
    talk = false;

if (animate == 0)
{
    image_speed = 0;
    image_index = 0;
}
else
{
    image_speed = 0.2;
}
