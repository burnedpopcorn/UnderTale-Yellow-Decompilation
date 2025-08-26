event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* Hello!";
                message[1] = "* Aren't you a bit young#  to be hanging around#  here?";
                message[2] = "* Not to judge or#  anything.";
                message[3] = "* I'm in town visiting my#  little Moray.";
                message[4] = "* My lovely wife, Angie,#  is running the mines#  while I'm away.";
                message[5] = "* Not sure how efficient#  my boys will be without#  me there, though.";
                message[6] = "* Ahh, it's a risk worth#  taking.";
                prt[0] = spr_gilbert_head_blush;
                prt[1] = spr_gilbert_head;
                prt[2] = spr_gilbert_head_sweat;
                prt[3] = spr_gilbert_head_blush;
                prt[4] = spr_gilbert_head;
                prt[5] = spr_gilbert_head_sweat;
                prt[6] = spr_gilbert_head;
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Angie often frets about#  Moray living down here.";
                message[1] = "* I've heard these Wild#  East fellas are real#  serious about everything.";
                message[2] = "* Moray originally touted#  it as being a human-like#  town.";
                message[3] = "* Said it was for \"role#  play\", whatever that is.";
                message[4] = "* Seems like it's shifted#  into something very#  different nowadays.";
                message[5] = "* I guess if my kiddo's#  happy, I can't complain#  too much.";
                prt[0] = spr_gilbert_head;
                prt[1] = spr_gilbert_head_sweat;
                prt[2] = spr_gilbert_head;
                prt[3] = spr_gilbert_head_blush;
                prt[4] = spr_gilbert_head_sweat;
                prt[5] = spr_gilbert_head;
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* The mines are always#  open to visitors if you#  call ahead of time!";
                message[1] = "* I'd like to see you back#  there soon!";
                prt[0] = spr_gilbert_head;
                prt[1] = spr_gilbert_head_blush;
            }
            
            break;
    }
}
