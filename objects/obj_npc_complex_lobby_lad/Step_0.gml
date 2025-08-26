event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    if (global.hotland_flag[1] > 0 && global.party_member != -4)
    {
        with (msg)
        {
            other.is_talking = 0;
            sndfnt = snd_talk_martlet;
            message[0] = "* (We need to stay#  focused.)";
            message[1] = "* (Let's not bother#  others with our#  problems.)";
            prt[0] = spr_martlet_head_moderate;
            prt[1] = spr_martlet_head_sad;
        }
    }
    else
    {
        switch (npc_flag)
        {
            case 0:
                with (msg)
                {
                    portrait = false;
                    sndfnt = sndfnt_default;
                    message[0] = "* You know that UGPS station#  right outside?";
                    message[1] = "* I hear it's going to be#  removed soon. All of them, in#  fact.";
                    message[2] = "* You might think it's because#  letters are going out of style#  but nah.";
                    message[3] = "* The company is just switching#  up their business model.";
                    message[4] = "* Direct delivery to citizens'#  mailboxes from now on!";
                    message[5] = "* Convenient, but kinda#  bittersweet. I enjoyed my daily#  walks to the ol' station.";
                    message[6] = "* At least this means everyone#  keeps their jobs. That's good#  news!";
                }
                
                npc_flag = 1;
                break;
            
            case 1:
                with (msg)
                {
                    portrait = false;
                    sndfnt = sndfnt_default;
                    message[0] = "* While the new mail system is#  nice, the King's kinda given up#  on improving society.";
                    message[1] = "* I respect what's been#  accomplished but most monsters#  act like we've peaked.";
                    message[2] = "* Not true, there's always more#  that could be done in my#  opinion!";
                    message[3] = "* We could use better public#  transportation for example.#  Like a train!";
                    message[4] = "* Or better yet, a subway train!";
                    message[5] = "* ...Wait, wouldn't all trains#  be considered subway trains#  here? ";
                }
                
                npc_flag = 2;
                break;
            
            case 2:
                with (msg)
                {
                    portrait = false;
                    sndfnt = sndfnt_default;
                    message[0] = "* I wonder if I could get a job#  as a mailmonster?";
                    message[1] = "* Sure I can't fly but I placed#  fourth on my highschool track#  team!";
                }
        }
    }
}
