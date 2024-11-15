event_inherited();

if (interact == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* do you know where guardener#  went?";
                message[1] = "* i felt we really hit it off.";
                message[2] = "* i'm thinking of calling her up#  for work inquiries - aka asking#  her out on a hot date.";
                message[3] = "* i know bot love is forbidden#  but that makes it ten times#  more exciting.";
                message[4] = "* and besides, they can't smite#  the smitten.";
                message[5] = "* not as long as i'm strapped.";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* i see you carry a sidearm#  yourself.";
                message[1] = "* a sixshooter, right? reliable,#  stylish, i like it.";
                message[2] = "* make sure to be responsible#  with it.";
                message[3] = "* it's \"safety first\" in the#  steamworks after all.";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* i gotta start thinking of what#  to wear on my date.";
                message[1] = "* saw a fella in a nice vest and#  hat earlier.";
                message[2] = "* maybe i could get some advice#  from him.";
            }
            
            break;
    }
}
