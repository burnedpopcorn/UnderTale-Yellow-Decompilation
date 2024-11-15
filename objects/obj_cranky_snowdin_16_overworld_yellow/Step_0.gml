event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    if (global.snowdin_flag[11] == 1)
    {
        with (msg)
        {
            portrait = false;
            sndfnt = 99;
            message[0] = "* Strange.";
            message[1] = "* That wasn't a handsome bridge#  last I looked.";
            message[2] = "* Was it always that way?";
            message[3] = "* ...";
            message[4] = "* Where am I?";
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
                    sndfnt = 99;
                    message[0] = "* Royal Guards. Thinking they're#  all special.";
                    message[1] = "* They don't have screening#  processes like they used to.";
                    message[2] = "* How do they interview these#  bozos?";
                    message[3] = "* \"Do you want to be a member of#  the Royal Guard? Yes?\"";
                    message[4] = "* \"Here's a uniform, you start#  Monday.\"";
                    message[5] = "* Just look at this puzzle! It#  was a perfectly nice bridge#  once!";
                    message[6] = "* I remember what it looked like#  as a bridge.";
                    message[7] = "* I would have called it a pretty#  handsome bridge.";
                    message[8] = "* Now, you can say homemade is#  \"charming\" or whatever,";
                    message[9] = "* But you can't call it handsome.#  No way, no way.";
                }
                
                npc_flag = 1;
                break;
            
            case 1:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* You can't just hire anyone for#  a position like this.";
                    message[1] = "* What do they do? Advertise for#  free Royal Guard posts in the#  mail?";
                    message[2] = "* Despicable.";
                }
                
                break;
        }
    }
}
