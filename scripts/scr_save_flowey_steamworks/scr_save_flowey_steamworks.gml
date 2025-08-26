function scr_save_flowey_steamworks()
{
    if (live_call())
        return global.live_result;
    
    var current_room = room_get_name(room);
    global.menu_sprite = spr_savescreen_steamworks;
    current_save_number = 1;
    scr_determine_save_area();
    
    if (global.flowey_save_number < current_save_number)
        global.flowey_save_number = current_save_number;
    
    scr_text();
    
    with (msg)
    {
        sndfnt = sndfnt_flowey;
        var kill_number = global.kill_number[4];
        
        if (current_room == "rm_steamworks_36" && global.route == 3 && global.sworks_flag[31] == 4 && global.hotland_flag[6] == 0)
        {
            message[0] = "* Are we gonna talk about#  what you just did?";
            message[1] = "* I've seriously had it#  with this behavior.";
            message[2] = "* I aid you for so long#  yet I have to deal with#  your angst?";
            message[3] = "* Ever heard of \"don't#  bite the hand that feeds#  you?\"";
            message[4] = "* But, oh, \"it's okay to#  bite Flowey because he#  doesn't have hands.\"";
            message[5] = "* Well I used to!";
            message[6] = "* ...";
            message[7] = "* I um...";
            message[8] = "* Heh...";
            message[9] = "* ...";
            message[10] = "* I made a promise to#  help you all the way to#  the Castle.";
            message[11] = "* So... I will.";
            message[12] = "* Just had to make my#  grievances known, ya#  know?";
            message[13] = "* A little respect goes a#  long way.";
            prt[0] = flowey_plains;
            prt[1] = flowey_pissed;
            prt[2] = flowey_pissed;
            prt[3] = flowey_pissed;
            prt[4] = spr_flowey_disappointed;
            prt[5] = flowey_pissed;
            prt[6] = flowey_plain;
            prt[7] = flowey_plains;
            prt[8] = flowey_worried;
            prt[9] = flowey_worried;
            prt[10] = flowey_plain;
            prt[11] = flowey_plains;
            prt[12] = flowey_nice;
            prt[13] = flowey_wink;
            global.sworks_flag[31] = 5;
        }
        else if (global.kill_number[3] <= 0 && kill_number <= 17 && global.flowey_flag[37] == 0)
        {
            global.flowey_flag[37] = 1;
            
            if (kill_number <= 10)
            {
                with (other)
                    scr_save_flowey_steamworks();
                
                exit;
            }
            
            message[0] = "* These undead piles of#  junk aren't very#  threatening.";
            message[1] = "* Not really worth the#  trouble.";
            prt[0] = flowey_plains;
            prt[1] = flowey_worried;
        }
        else if (kill_number <= 12 && global.flowey_flag[37] == 1)
        {
            global.flowey_flag[37] = 2;
            
            if (kill_number <= 5)
            {
                with (other)
                    scr_save_flowey_steamworks();
                
                exit;
            }
            
            message[0] = "* Still at it, huh?";
            message[1] = "* Sorry but I'm runnin'#  low on witty comments at#  this point.";
            prt[0] = spr_flowey_disappointed;
            prt[1] = flowey_plains;
        }
        else if (kill_number <= 8 && global.flowey_flag[37] == 2)
        {
            global.flowey_flag[37] = 3;
            
            if (kill_number <= 0)
            {
                with (other)
                    scr_save_flowey_steamworks();
                
                exit;
            }
            
            message[0] = "* ...What? You want me to#  keep inflating your ego?";
            message[1] = "* This was novel back in#  like, Snowdin, but now?";
            message[2] = "* I don't know... Aren't#  you bored?";
            message[3] = "* ...";
            message[4] = "* Right.";
            prt[0] = flowey_plain;
            prt[1] = flowey_plains;
            prt[2] = spr_flowey_disappointed;
            prt[3] = spr_flowey_disappointed;
            prt[4] = flowey_plains;
        }
        else if (kill_number <= 5 && global.flowey_flag[37] == 3)
        {
            global.flowey_flag[37] = 4;
            
            if (kill_number <= 0)
            {
                with (other)
                    scr_save_flowey_steamworks();
                
                exit;
            }
            
            message[0] = "* Wow! I am constantly#  astonished by your#  abilities!";
            message[1] = "* The skill it must've#  taken to shoot a bunch#  of tin cans!";
            message[2] = "* Just, inspiring!";
            prt[0] = flowey_nice;
            prt[1] = flowey_niceside;
            prt[2] = flowey_wink;
        }
        else if (global.kill_number[4] <= 0 && global.flowey_flag[37] == 4)
        {
            message[0] = "* ...";
            message[1] = "* Okay.";
            message[2] = "* We've had our fun in#  this place but#  seriously...";
            message[3] = "* This was a big waste of#  time. For both of us.";
            message[4] = "* Don't you agree?";
            message[5] = "* You proved you could#  best ASGORE a long time#  ago.";
            message[6] = "* All of this... It's#  excessive, ya know?";
            message[7] = "* So let's just stroll on#  up to the Castle now.";
            message[8] = "* No more unnecessary#  battles. ";
            message[9] = "* Save your energy for#  the fight that matters,#  okay?";
            message[10] = "* Trust me on this,#  buddy.";
            prt[0] = flowey_plains;
            prt[1] = flowey_plain;
            prt[2] = flowey_plain;
            prt[3] = flowey_plain;
            prt[4] = flowey_worried;
            prt[5] = flowey_nice;
            prt[6] = flowey_niceside;
            prt[7] = flowey_nice;
            prt[8] = flowey_nice;
            prt[9] = flowey_nice;
            prt[10] = flowey_wink;
            global.flowey_flag[37] = 5;
        }
        else if (global.flowey_flag[37] == 5)
        {
            message[0] = "* ...";
            prt[0] = flowey_plain;
        }
        else if (global.route == 3)
        {
            message[0] = "* ...";
            prt[0] = flowey_plain;
        }
        else if (other.current_save_number < global.flowey_save_number)
        {
            message[0] = "* What are you doing back#  here? The exit's the#  other way, silly!";
            message[1] = "* Let's get going.";
            prt[0] = flowey_plain;
            prt[1] = flowey_nice;
        }
        else
        {
            switch (current_room)
            {
                case "rm_steamworks_05":
                    if (global.route == 1)
                    {
                        switch (global.flowey_flag[24])
                        {
                            case 0:
                                message[0] = "* Howdy!";
                                message[1] = "* You seem to be#  progressing well!";
                                message[2] = "* Not that I expected#  anything else.";
                                message[3] = "* Let's get out there and#  see what this place has#  to offer!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_niceside;
                                prt[2] = flowey_wink;
                                prt[3] = flowey_plain;
                                global.flowey_flag[24]++;
                                break;
                            
                            case 1:
                                message[0] = "* You think anyone still#  lives here?";
                                message[1] = "* Eh, if they do, you can#  handle it!";
                                prt[0] = flowey_plains;
                                prt[1] = flowey_nice;
                                global.flowey_flag[24]++;
                                break;
                            
                            case 2:
                                message[0] = "* Let's get a move on,#  buddy!";
                                prt[0] = flowey_nice;
                                break;
                        }
                        
                        exit;
                    }
                    
                    if (global.route == 2)
                    {
                        message[0] = "* Let's get'cha saved!";
                        prt[0] = flowey_nice;
                        exit;
                    }
                    
                    break;
                
                case "rm_steamworks_09":
                    if (global.route == 1)
                    {
                        switch (global.flowey_flag[25])
                        {
                            case 0:
                                message[0] = "* Howdy!";
                                message[1] = "* So it's truly just you#  and me in this place,#  huh?";
                                message[2] = "* Bit of an anticlimax#  after everything we've#  been through.";
                                message[3] = "* I'm thankful though, the#  Dunes were draining!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_niceside;
                                prt[2] = flowey_worried;
                                prt[3] = flowey_wink;
                                global.flowey_flag[25]++;
                                break;
                            
                            case 1:
                                message[0] = "* Time's a-ticking,#  Clover!";
                                prt[0] = flowey_nice;
                                break;
                        }
                        
                        exit;
                    }
                    
                    break;
                
                case "rm_steamworks_15":
                    if (global.route == 1)
                    {
                        switch (global.flowey_flag[26])
                        {
                            case 0:
                                message[0] = "* Howdy!";
                                message[1] = "* Glad to see you out and#  about!\t";
                                message[2] = "* Axis' brain must be#  rusted through.\t";
                                message[3] = "* Didn't take much to#  escape his \"trap.\"\t";
                                message[4] = "* I have a feeling you#  haven't seen the last of#  him, though.";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_niceside;
                                prt[2] = flowey_worried;
                                prt[3] = flowey_wink;
                                prt[4] = flowey_nice;
                                global.flowey_flag[26]++;
                                break;
                            
                            case 1:
                                message[0] = "* The lake ahead looks#  mighty treacherous!";
                                message[1] = "* Let's take a look at#  what we're dealing with,#  pal!";
                                prt[0] = flowey_niceside;
                                prt[1] = flowey_nice;
                                break;
                        }
                        
                        exit;
                    }
                    
                    break;
                
                case "rm_steamworks_19":
                    if (global.route == 1)
                    {
                        switch (global.flowey_flag[27])
                        {
                            case 0:
                                message[0] = "* Howdy!";
                                message[1] = "* Look at you sailing#  across a blazing lake#  with ease!";
                                message[2] = "* These robots aren't#  useless after all!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_niceside;
                                prt[2] = flowey_wink;
                                global.flowey_flag[27]++;
                                break;
                            
                            case 1:
                                message[0] = "* You know, it's kinda#  funny...";
                                message[1] = "* This bot looks like it#  could kick the bucket#  any day...";
                                message[2] = "* ...Yet it glided across#  the lava no problem.";
                                message[3] = "* Sure can't say the same#  for Martlet's \"sturdy\"#  raft, haha!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_niceside;
                                prt[2] = flowey_nice;
                                prt[3] = flowey_smirk;
                                global.flowey_flag[27]++;
                                break;
                            
                            case 2:
                                message[0] = "* Further into this#  facility we go!";
                                prt[0] = flowey_nice;
                                break;
                        }
                        
                        exit;
                    }
                    
                    break;
                
                case "rm_steamworks_23":
                    if (global.route == 1)
                    {
                        switch (global.flowey_flag[28])
                        {
                            case 0:
                                message[0] = "* Howdy!\t";
                                message[1] = "* Not a fan of this area's#  bleak vibe, honestly.";
                                message[2] = "* I got my fill of this#  kinda stuff with the#  Ruins.";
                                message[3] = "* Guess I'm not freezing#  or choking on sand so...";
                                message[4] = "* ...It's certainly been#  worse, haha!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_plains;
                                prt[2] = flowey_plain;
                                prt[3] = flowey_niceside;
                                prt[4] = flowey_nice;
                                global.flowey_flag[28]++;
                                break;
                            
                            case 1:
                                message[0] = "* We better get moving#  before this place#  collapses!\t";
                                message[1] = "* It's definitely seen#  better days!";
                                prt[0] = flowey_plain;
                                prt[1] = flowey_plains;
                                break;
                        }
                        
                        exit;
                    }
                    
                    break;
                
                case "rm_steamworks_29":
                    if (global.route == 1)
                    {
                        switch (global.flowey_flag[29])
                        {
                            case 0:
                                message[0] = "* Howdy!";
                                message[1] = "* What IS all this stuff?";
                                message[2] = "* It certainly isn't#  natural.";
                                message[3] = "* I mean, if anyone knows#  flowers, it's me.";
                                message[4] = "* Bleh!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_plains;
                                prt[2] = flowey_sad;
                                prt[3] = flowey_worried;
                                prt[4] = flowey_sad;
                                global.flowey_flag[29]++;
                                break;
                            
                            case 1:
                                message[0] = "* This can't be good for#  my roots.";
                                message[1] = "* Feel like I'm being#  poisoned the longer we#  sit here.";
                                message[2] = "* Could you hurry it up?";
                                prt[0] = flowey_plain;
                                prt[1] = flowey_plains;
                                prt[2] = flowey_sad;
                                global.flowey_flag[29]++;
                                break;
                            
                            case 2:
                                message[0] = "* Let's get outta here,#  pal!";
                                prt[0] = flowey_sad;
                                break;
                        }
                        
                        exit;
                    }
                    
                    break;
                
                case "rm_steamworks_30":
                    if (global.route == 1)
                    {
                        switch (global.flowey_flag[30])
                        {
                            case 0:
                                message[0] = "* Howdy!";
                                message[1] = "* Golly, that bot sure was#  a handful!";
                                message[2] = "* Not to mention a total#  rip-off.\t";
                                message[3] = "* Flowers and vines are my#  shtick!";
                                message[4] = "* Well, I suppose it goes#  to show...";
                                message[5] = "* ...that mechanical#  imitations can't beat#  the real deal!\t";
                                message[6] = "* I will say, that thing#  honestly felt more#  threatening than Axis.";
                                message[7] = "* I'm not trying to tell#  you what to do but just#  for consideration...";
                                message[8] = "* ...Why don't you... ya#  know, \"deal with\" Axis#  next time you meet?";
                                message[9] = "* I'm sure it would be#  easy. Just a thought!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_niceside;
                                prt[2] = flowey_pissed;
                                prt[3] = flowey_pissed;
                                prt[4] = flowey_plains;
                                prt[5] = flowey_nice;
                                prt[6] = flowey_plain;
                                prt[7] = flowey_plains;
                                prt[8] = flowey_nice;
                                prt[9] = flowey_nice;
                                global.flowey_flag[30]++;
                                break;
                            
                            case 1:
                                message[0] = "* I suppose it's time to#  get a move on!";
                                prt[0] = flowey_nice;
                                break;
                        }
                        
                        exit;
                    }
                    
                    break;
                
                case "rm_steamworks_chem_03":
                    if (global.route == 1)
                    {
                        switch (global.flowey_flag[31])
                        {
                            case 0:
                                message[0] = "* Howdy!\t";
                                message[1] = "* Who knew the Steamworks#  were so dense!\t";
                                message[2] = "* Like, where are we now?\t";
                                message[3] = "* I see test tubes...#  microscopes...";
                                message[4] = "* Almost reminds me of...\t";
                                message[5] = "* Eh, I don't know.#  Science isn't my forte.";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_niceside;
                                prt[2] = flowey_plains;
                                prt[3] = flowey_plain;
                                prt[4] = flowey_plains;
                                prt[5] = flowey_nice;
                                global.flowey_flag[31]++;
                                break;
                            
                            case 1:
                                message[0] = "* Whatever you do, don't#  drink anything you see#  here.";
                                message[1] = "* All of this liquid has#  been lying out for years,#  molding.";
                                message[2] = "* ...Not that you've ever#  been shy of eating#  discarded garbage.";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_niceside;
                                prt[2] = flowey_plain;
                                global.flowey_flag[31]++;
                                break;
                            
                            case 2:
                                message[0] = "* Let's see what lies#  ahead, buddy!";
                                prt[0] = flowey_nice;
                                break;
                        }
                        
                        exit;
                    }
                    
                    break;
                
                case "rm_steamworks_chem_06":
                    if (global.route == 1)
                    {
                        switch (global.flowey_flag[32])
                        {
                            case 0:
                                message[0] = "* Howdy!";
                                message[1] = "* Just when I thought Axis#  couldn't get any more#  clumsy.\t";
                                message[2] = "* Glad he's gone! \t";
                                message[3] = "* It's down to us yet#  again, the unwavering#  duo!";
                                message[4] = "* We do work well as a#  team, don'tcha think?";
                                message[5] = "* Flowey \"the brains\" and#  Clover \"the brawn!\"";
                                message[6] = "* Not saying you aren't#  smart of course, haha.";
                                message[7] = "* Watching you solve#  puzzles has been a#  treat!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_niceside;
                                prt[2] = flowey_nice;
                                prt[3] = flowey_nice;
                                prt[4] = flowey_wink;
                                prt[5] = flowey_nice;
                                prt[6] = flowey_niceside;
                                prt[7] = flowey_nice;
                                global.flowey_flag[32]++;
                                break;
                            
                            case 1:
                                message[0] = "* What's up with this#  place and botany?\t";
                                message[1] = "* Are plants and robots#  all these scientists#  care about?";
                                message[2] = "* I mean, I AM a plant#  but you don't hear me#  talking about it 24/7.";
                                prt[0] = flowey_plains;
                                prt[1] = flowey_plain;
                                prt[2] = flowey_nice;
                                global.flowey_flag[32]++;
                                break;
                            
                            case 2:
                                message[0] = "* We're almost out of this#  facility, I can feel it!\t";
                                message[1] = "* Don't slow down now!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_nice;
                                break;
                        }
                        
                        exit;
                    }
                    
                    break;
                
                case "rm_steamworks_34":
                    if (global.route == 1)
                    {
                        switch (global.flowey_flag[33])
                        {
                            case 0:
                                message[0] = "* Whatever lies ahead, I'm#  sure you'll make the#  right decisions.\t";
                                message[1] = "* Go get 'em!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_nice;
                                break;
                        }
                        
                        exit;
                    }
                    
                    break;
                
                case "rm_steamworks_36":
                    if (global.route == 1)
                    {
                        switch (global.flowey_flag[34])
                        {
                            case 0:
                                message[0] = "* Howdy!";
                                message[1] = "* Can you smell that?#  Magma and steel!";
                                message[2] = "* Newer... steel. Point#  is, we're almost outta#  here, pal! ";
                                message[3] = "* This journey is about to#  pay off big time thanks#  to you!";
                                message[4] = "* See you up ahead!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_niceside;
                                prt[2] = flowey_worriedside;
                                prt[3] = flowey_nice;
                                prt[4] = flowey_niceside;
                                global.flowey_flag[34] += 1;
                                break;
                            
                            case 1:
                                message[0] = "* ASGORE is so close!";
                                message[1] = "* Let's get a move on,#  Clover!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_nice;
                                break;
                        }
                        
                        exit;
                    }
                    
                    break;
            }
        }
    }
}
