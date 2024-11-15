event_inherited();
depth = -10;

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* Yep...";
                message[1] = "* ...";
                message[2] = "* That's correct...";
                message[3] = "* ...";
                message[4] = "* No, not that I know of.";
                message[5] = "* ...";
                message[6] = "* Sir, what are you suggesting?";
                message[7] = "* ...";
                message[8] = "* Are you sure?";
                message[9] = "* ...";
                message[10] = "* No, I'm not arguing, it's#  just...";
                message[11] = "* ...";
                message[12] = "* Affirmative.";
                message[13] = "* Over and out.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Please stand clear of this#  machine while we're operating.";
                message[1] = "* In fact, I'mma need you to#  stand clear of the whole#  arcade.";
                message[2] = "* It's best you don't question#  it, alright?";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* Sir, it's me again.";
                message[1] = "* We have a problem.";
                message[2] = "* ...";
                message[3] = "* Yeah. ";
                message[4] = "* There's a kid jeopardizing the#  operation.";
                message[5] = "* Brown hat. Yellow bandana.";
                message[6] = "* ...";
                message[7] = "* Yep, that's the one.";
                message[8] = "* ...";
                message[9] = "* Do I have a distraction? ";
                message[10] = "* No, why would I?";
                message[11] = "* What do kids like?";
                message[12] = "* ...";
                message[13] = "* Video games!?";
                message[14] = "* You do know what I'm trying to#  get them away from right?";
                message[15] = "* ...";
                message[16] = "* Their parents?";
                message[17] = "* Yeah, I think kids like their#  parents...";
                message[18] = "* ...";
                message[19] = "* What?";
                message[20] = "* But sir!";
                message[21] = "* ...";
                message[22] = "* ...Affirmative.";
                message[23] = "* Over and out.";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            waiter = 1;
            npc_flag = 4;
            break;
        
        case 4:
            with (msg)
            {
                message[0] = "* (Not again!)";
                message[1] = "* Um, hey kiddo!";
                message[2] = "* Why don't you go to the#  playground?";
                message[3] = "* Yeah!";
                message[4] = "* Go on and get some exercise!";
                message[5] = "* These arcade games will#  only...";
                message[6] = "* Will only...";
                message[7] = "* ...";
            }
            
            npc_flag = 5;
            break;
        
        case 5:
            with (msg)
            {
                message[0] = "* ...";
                message[1] = "* I've got a job to do.";
            }
            
            break;
    }
}

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        ch_msg = 3;
        ch[1] = "Great!";
        ch[2] = ":(";
        message[0] = "* Say, sport!";
        message[1] = "* How have you been lately?";
        message[2] = "* How's the homework coming?";
        message[3] = "* How're the grades?";
        
        if (outcome == 1)
        {
            message[4] = "* What swell news!";
            message[5] = "* Your mother always said your#  head was too large for your#  body but you know what?";
            message[6] = "* It's because you're so smart!";
            message[7] = "* Ha ha! Proud of you!";
            message[8] = "* (I'm so sorry.)";
            other.waiter = 0;
        }
        
        if (outcome == 2)
        {
            message[4] = "* Ah, well, you always were a#  disappointment!";
            message[5] = "* ...Is what those nasty bullies#  at school would say!";
            message[6] = "* Ha ha! I would never!";
            message[7] = "* Uhh-just keep studying and I'm#  sure you'll be on the path to#  success in no time!";
            message[8] = "* (I'm so sorry.)";
            other.waiter = 0;
        }
    }
}
