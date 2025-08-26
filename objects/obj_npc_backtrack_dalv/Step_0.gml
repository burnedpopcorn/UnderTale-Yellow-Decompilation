event_inherited();

if (interact && waiter == 0)
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = snd_talk_dalv;
                talker[0] = other;
                ch_msg = 4;
                ch[1] = "Housing";
                ch[2] = "Future";
                message[0] = "* Clover!";
                message[1] = "* Hello!";
                message[2] = "* You sort of caught me#  in the middle of moving,";
                message[3] = "* But I don't mind taking#  a break to chat!";
                message[4] = "* What's on your mind?";
                prt[0] = spr_dalv_head_happy;
                prt[1] = spr_dalv_head_content_2;
                prt[2] = spr_dalv_head_content;
                prt[3] = spr_dalv_head_content_2;
                prt[4] = spr_dalv_head_content;
                
                if (outcome == 1)
                {
                    message[5] = "* Oh, see this structure#  here?";
                    message[6] = "* I have claimed it as my#  new residency!";
                    message[7] = "* Of course, it's in no#  state for living at the#  moment.";
                    message[8] = "* I will definitely need#  help on the construction#  end of things.";
                    message[9] = "* Not sure if Pops will#  like the close quarters#  but...";
                    message[10] = "* I'm sure he'll get over#  it.";
                    message[11] = "* He has a tendency to#  get a big head from time#  to time.";
                    message[12] = "* We're working on it...";
                    prt[5] = spr_dalv_head_content;
                    prt[6] = spr_dalv_head_happy;
                    prt[7] = spr_dalv_head_confused;
                    prt[8] = spr_dalv_head_content;
                    prt[9] = spr_dalv_head_sad_side;
                    prt[10] = spr_dalv_head_content;
                    prt[11] = spr_dalv_head_moderate;
                    prt[12] = spr_dalv_head_regular;
                    other.waiter = 0;
                    other.npc_flag += 1;
                }
                
                if (outcome == 2)
                {
                    message[5] = "* Um, well, I haven't#  made a concrete plan#  yet.";
                    message[6] = "* Taking things one step#  at a time.";
                    message[7] = "* If you remember, I#  tossed some ideas around#  before you left my home.";
                    message[8] = "* Gotta say, the concert#  idea in particular is#  tempting!";
                    message[9] = "* ...If I can work up the#  courage to go through#  with such a thing.";
                    message[10] = "* Maybe I'll brush up on#  my organ skills in the#  meantime?";
                    message[11] = "* Practice makes perfect!";
                    prt[5] = spr_dalv_head_confused;
                    prt[6] = spr_dalv_head_content_2;
                    prt[7] = spr_dalv_head_content;
                    prt[8] = spr_dalv_head_happy;
                    prt[9] = spr_dalv_head_sad_side;
                    prt[10] = spr_dalv_head_content;
                    prt[11] = spr_dalv_head_content_2;
                    other.waiter = 0;
                    other.npc_flag += 1;
                }
            }
            
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = snd_talk_dalv;
                talker[0] = other;
                message[0] = "* I hadn't thought of it#  until now but...";
                message[1] = "* We might have a crisis#  on our hands.";
                message[2] = "* Half of my luggage here#  is stocked with corn.";
                message[3] = "* Enough to last a week#  at most, but what then?";
                message[4] = "* I suppose I could trek#  back to my field...";
                message[5] = "* But still, that will#  only get me so far.";
                message[6] = "* I don't want to deal#  with corn withdrawals!";
                message[7] = "* Hmm... ";
                message[8] = "* I will be mulling over#  this for some time.";
                message[9] = "* Don't mind me.";
                prt[0] = spr_dalv_head_sad;
                prt[1] = spr_dalv_head_sad_side;
                prt[2] = spr_dalv_head_sleepy;
                prt[3] = spr_dalv_head_sleepy;
                prt[4] = spr_dalv_head_sad_side;
                prt[5] = spr_dalv_head_moderate;
                prt[6] = spr_dalv_head_regular;
                prt[7] = spr_dalv_head_sad_side;
                prt[8] = spr_dalv_head_regular;
                prt[9] = spr_dalv_head_moderate;
            }
            
            waiter = 0;
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = snd_talk_dalv;
                talker[0] = other;
                message[0] = "* So, have you been#  journeying through the#  Underground?";
                message[1] = "* Your bravery is#  inspiring!";
                message[2] = "* The Ruins were only the#  beginning of your#  obstacles, I'm sure.";
                message[3] = "* I... do regret troubling#  you. Very much so.";
                message[4] = "* But, with a#  glass-half-full#  mindset...";
                message[5] = "* Fighting a low-level#  monster first was good#  training, right?";
                message[6] = "* There are some pretty#  scary encounters to be#  had out there.";
                message[7] = "* I'm nothing compared to#  them...";
                message[8] = "* So please stay safe!";
                prt[0] = spr_dalv_head_content_2;
                prt[1] = spr_dalv_head_content;
                prt[2] = spr_dalv_head_content;
                prt[3] = spr_dalv_head_sad_side;
                prt[4] = spr_dalv_head_moderate;
                prt[5] = spr_dalv_head_content_2;
                prt[6] = spr_dalv_head_moderate;
                prt[7] = spr_dalv_head_sad_side;
                prt[8] = spr_dalv_head_content_2;
            }
            
            waiter = 0;
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = snd_talk_dalv;
                talker[0] = other;
                message[0] = "* You know, I find it#  strange.";
                message[1] = "* We only met mere hours#  ago but for some#  reason...";
                message[2] = "* It feels like I've#  known you for years.";
                message[3] = "* Time is truly the#  puzzle we will never#  solve.";
                prt[0] = spr_dalv_head_confused;
                prt[1] = spr_dalv_head_moderate;
                prt[2] = spr_dalv_head_content;
                prt[3] = spr_dalv_head_content_2;
            }
            
            waiter = 0;
            npc_flag = 4;
            break;
        
        case 4:
            with (msg)
            {
                portrait = false;
                sndfnt = snd_talk_dalv;
                talker[0] = other;
                message[0] = "* Well, I better get back#  to it.";
                message[1] = "* I wish you all the luck#  in the world, Clover!";
                message[2] = "* Go do for others what#  you did for me!";
                prt[0] = spr_dalv_head_content;
                prt[1] = spr_dalv_head_content_2;
                prt[2] = spr_dalv_head_content;
            }
            
            waiter = 0;
            break;
    }
}
