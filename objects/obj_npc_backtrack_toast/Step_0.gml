event_inherited();

if (interact)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* Look who it is!";
                message[1] = "* Didn't think I'd see you back#  here before the boss.";
                message[2] = "* He left on business...";
                message[3] = "* That's all...";
                message[4] = "* Yeah...";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* Aight, I'll spill, you've#  convinced me.";
                message[1] = "* There's a fella who likes to#  loiter ‘round here. You#  might've seen ‘em.";
                message[2] = "* Yeeaah well, we got history.";
                message[3] = "* While back, he set up a shop.#  On OUR turf.";
                message[4] = "* The boss was STEAMIN'. Real#  peeved off, ya know?";
                message[5] = "* But Rephil, bein' the upsittin'#  citizen he is, thought#  it best to strike a deal.";
                message[6] = "* If the fella were to pay us a#  mortgage, we wouldn't kick him#  to the cold.";
                message[7] = "* Sounds fair, right?";
                message[8] = "* Well, his little venture#  didn't go so well.";
                message[9] = "* His end of the deal wasn't#  exactly kept up, so Rephil did#  what had to be done.";
                message[10] = "* ...What? You don't like our#  methods?";
                message[11] = "* Hey, don't spend money you#  don't have. All's I'm sayin'.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* Yeah yeah, there's more to the#  story.";
                message[1] = "* So the guy still owes us big#  time, right?";
                message[2] = "* Well we kept an eye on him for#  a while as he tried these#  “pop-up shop” things.";
                message[3] = "* It was quiet. Peaceful, even.#  Until recently...";
                message[4] = "* He seemed to be in a hurry.#  Briefcase all packed and such.";
                message[5] = "* The boss was MIGHTY#  suspicious, so we set a game up#  for him.";
                message[6] = "* The ball was summoned and the#  stakes were high.";
                message[7] = "* Suddenly he shouts “LOOK! IT'S#  A BIRD!” and we turn around#  QUICK.";
                message[8] = "* Turns out there actually was a#  bird and it was sick.";
                message[9] = "* BUT! ";
                message[10] = "* In that moment, he STOLE our#  Orange Ball (limited edition)#  and ran!";
                message[11] = "* By the time Rephil noticed,#  the fella was long gone.";
                message[12] = "* Ohhh Rephil was PIPIN' mad!#  Understandably.";
                message[13] = "* So that's about where we are#  now.";
                message[14] = "* The whole thing has been a#  frickin' pain.";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = string("* I'd be off searchin' with the#  boss but {0} gets lonely#  easily.", global.fun_swig_name);
                message[1] = "* What's that classic saying? Oh#  yeah:";
                message[2] = "* \"A Shuffler never leaves a#  Shuffler behind.\"";
                message[3] = "* That's like, rule 5.";
                message[4] = "* Wait... ";
                message[5] = "* The boss broke rule 5!";
                message[6] = "* What the hell!";
            }
            
            break;
    }
}
