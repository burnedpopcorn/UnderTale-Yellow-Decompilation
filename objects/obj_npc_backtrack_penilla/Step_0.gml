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
                message[0] = "* Oh, didn't see you there!";
                message[1] = "* I'm just staring at this pond#  for my next landscape study.";
                message[2] = "* It reminds me of us.#  Individuals, I mean.";
                message[3] = "* Most of it is beautiful.#  Perfection at a glance.";
                message[4] = "* But then you look closer and#  see a hole cut right through.";
                message[5] = "* Jagged, invasive... defacing#  and weakening what should be a#  masterpiece.";
                message[6] = "* Sure, you could fill it in,#  but it would only be a faux#  correction to the whole.";
                message[7] = "* It may look stronger than#  before, but the wound will#  always be present.";
                message[8] = "* ...";
                message[9] = "* Then again, maybe it's just a#  pond with a hole in it.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* I thought starting small would#  be best after leaving the#  Ruins.";
                message[1] = "* It's a little overwhelming,#  thinking of how much art I can#  make now.";
                message[2] = "* Drawing in increments for#  sanity's sake, heh!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* When I feel like branching#  out, I might try my hand at ice#  sculpting!";
                message[1] = "* I would definitely need a#  teacher, though.";
                message[2] = "* There is this one monster who#  is highly proficient at ice#  magic.";
                message[3] = "* They roam the higher#  elevations south of here last I#  heard.";
                message[4] = "* Probably too busy for silly#  art projects, unfortunately.";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* Sorry, but I have work to do!";
                message[1] = "* Catch you later, yeah?";
            }
            
            break;
    }
}
