event_inherited();

if (interact)
{
    scr_text();
    
    if (instance_exists(obj_martlet_follower) && global.sworks_flag[0] == 0)
    {
        if (npc_flag == 0)
        {
            with (msg)
            {
                talker[0] = obj_martlet_follower;
                sndfnt = snd_talk_martlet;
                message[0] = "* Ah... I see....";
                message[1] = "* An oak base with iron#  nails holding it#  together...";
                message[2] = "* Oh, sorry. I was#  nerding out for a#  second.";
                message[3] = "* Sure is a cool wagon!";
                prt[0] = spr_martlet_head_regular;
                prt[1] = spr_martlet_head_regular;
                prt[2] = spr_martlet_head_nervous_smile;
                prt[3] = spr_martlet_head_happy;
                other.npc_flag = 1;
            }
        }
        else if (npc_flag == 1)
        {
            with (msg)
            {
                talker[0] = obj_martlet_follower;
                sndfnt = snd_talk_martlet;
                message[0] = "* We can move on, I've#  seen enough.";
                prt[0] = spr_martlet_head_content;
            }
        }
    }
    else
    {
        with (msg)
            message[0] = "* (An old, abandoned wagon.)";
    }
}
