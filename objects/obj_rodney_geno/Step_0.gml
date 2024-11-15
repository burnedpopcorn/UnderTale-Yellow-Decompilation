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
                message[0] = "* We were in the middle of our#  set when everyone started#  leaving.";
                message[1] = "* At first I thought our music#  was that bad, but then they#  said there was danger.";
                message[2] = "* Surely it's not what I think#  it is...\t";
                message[3] = "* Not again...";
                other.npc_flag += 1;
                break;
            
            case 1:
                message[0] = "* Uh... yeah, sorry we had to#  cancel the show.";
                message[1] = "* We have a gig in Waterfall#  next week. Catch us later.";
                break;
        }
    }
}
