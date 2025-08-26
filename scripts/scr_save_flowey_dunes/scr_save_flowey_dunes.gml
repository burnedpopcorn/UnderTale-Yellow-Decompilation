function scr_save_flowey_dunes()
{
    var current_room = room_get_name(room);
    current_save_number = 1;
    scr_determine_save_area();
    global.menu_sprite = spr_savescreen_dunes;
    
    if (global.flowey_save_number < current_save_number)
        global.flowey_save_number = current_save_number;
    
    scr_text();
    
    with (msg)
    {
        sndfnt = sndfnt_flowey;
        var kill_number = global.kill_number[3];
        
        if (global.kill_number[2] <= 0 && global.kill_number[3] <= 15 && global.flowey_flag[35] == 0)
        {
            global.flowey_flag[35] = 1;
            
            if (kill_number <= 10)
            {
                instance_destroy();
                scr_save_flowey_dunes();
                exit;
            }
            
            message[0] = "* Always a treat to see#  your gunslinging skills!";
            message[1] = "* Let's get you saved!";
            prt[0] = flowey_nice;
            prt[1] = flowey_nice;
        }
        else if (global.kill_number[3] <= 10 && global.flowey_flag[35] == 1)
        {
            global.flowey_flag[35] = 2;
            
            if (kill_number <= 5)
            {
                instance_destroy();
                scr_save_flowey_dunes();
                exit;
            }
            
            message[0] = "* Golly, monsters 'round#  here sure have it out#  for you!";
            message[1] = "* How could they keep#  attacking a poor human#  so willingly?\t";
            message[2] = "* We can't have that! Not#  at all!";
            prt[0] = flowey_nice;
            prt[1] = flowey_niceside;
            prt[2] = flowey_wink;
        }
        else if (global.kill_number[3] <= 5 && global.flowey_flag[35] == 2)
        {
            global.flowey_flag[35] = 3;
            
            if (kill_number <= 0)
            {
                instance_destroy();
                scr_save_flowey_dunes();
                exit;
            }
            
            message[0] = "* I don't see many more#  enemies roaming about.";
            message[1] = "* Once you encounter the#  rest, show 'em who's#  boss!";
            prt[0] = flowey_nice;
            prt[1] = flowey_smirk;
        }
        else if (global.kill_number[3] <= 0 && global.flowey_flag[35] == 3)
        {
            message[0] = "* You are... whoa, haha.#  Talented, for sure!";
            message[1] = "* You laid waste to this#  wasteland!";
            message[2] = "* This place definitely#  wasn't big enough for#  the both of you!";
            prt[0] = flowey_plain;
            prt[1] = flowey_niceside;
            prt[2] = flowey_nice;
            global.flowey_flag[35] = 4;
        }
        else if (global.flowey_flag[35] == 4)
        {
            message[0] = "* Keep on movin', buddy!";
            message[1] = "* We're getting ever so#  closer to your REAL#  target!";
            prt[0] = flowey_nice;
            prt[1] = flowey_nice;
            global.flowey_flag[35] = 5;
        }
        else if (global.flowey_flag[35] == 5)
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
                case "rm_dunes_02":
                    switch (global.flowey_flag[15])
                    {
                        case 0:
                            message[0] = "* This cave is a little#  claustrophobic for my#  taste.";
                            message[1] = "* Get out there and see#  what we're really#  dealing with!";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_nice;
                            
                            if (global.geno_complete[2] == 1)
                            {
                                message[0] = "* This area seems...#  different.";
                                message[1] = "* Let's hope there aren't#  as many distractions#  along the way.";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_nice;
                            }
                            
                            global.flowey_flag[15] += 1;
                            break;
                        
                        case 1:
                            if (global.snowdin_flag[13] <= 1)
                            {
                                message[0] = "* I get that you may#  wanna wait for your#  friend,";
                                message[1] = "* But she's long#  gone.";
                                message[2] = "* She got you into this#  situation.";
                                message[3] = "* But you're#  gonna have to get#  yourself out.";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_nice;
                                prt[2] = flowey_nice;
                                prt[3] = flowey_nice;
                            }
                            else if (global.snowdin_flag[13] >= 2)
                            {
                                message[0] = "* I get that you might#  wanna rest after the#  wild ride back there...";
                                message[1] = "* But we have no time to#  waste!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_nice;
                            }
                            else if (global.geno_complete[2] == 1)
                            {
                                message[0] = "* I get that you might#  wanna rest after the#  wild ride back there...";
                                message[1] = "* But we have no time to#  waste!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_nice;
                            }
                            
                            global.flowey_flag[15] += 1;
                            break;
                        
                        case 2:
                            if (global.geno_complete[2] == 1)
                            {
                                message[0] = "* I'll be waiting for ya#  up ahead when you#  decide to head out.";
                                prt[0] = flowey_nice;
                            }
                            else
                            {
                                message[0] = "* No more waiting around.";
                                message[1] = "* Go get 'em, Clover!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_nice;
                            }
                            
                            break;
                    }
                    
                    break;
                
                case "rm_dunes_08":
                    switch (global.flowey_flag[16])
                    {
                        case 0:
                            message[0] = "* Howdy!";
                            message[1] = "* Strange sight, huh?";
                            message[2] = "* Who knew something#  could actually grow#  here?";
                            message[3] = "* Anyway, great job so#  far!";
                            message[4] = "* This place is much more#  treacherous than#  Snowdin!";
                            message[5] = "* Keep it up, Clover!";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_niceside;
                            prt[2] = flowey_niceside;
                            prt[3] = flowey_nice;
                            prt[4] = flowey_nice;
                            prt[5] = flowey_nice;
                            global.flowey_flag[16] += 1;
                            break;
                        
                        case 1:
                            message[0] = "* Let's get moving!";
                            message[1] = "* I'm gonna catch fire if#  I stay out too long!";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_plains;
                            break;
                    }
                    
                    break;
                
                case "rm_dunes_14":
                    switch (global.flowey_flag[17])
                    {
                        case 0:
                            message[0] = "* Golly, the emblems on#  these miner uniforms are#  very interesting.";
                            message[1] = "* Guess I'm the boss#  'round here!";
                            message[2] = "* Jokes aside, you got#  some smarts!";
                            message[3] = "* Fixed that elevator#  with ease.";
                            message[4] = "* Proud of ya!";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_wink;
                            prt[2] = flowey_nice;
                            prt[3] = flowey_niceside;
                            prt[4] = flowey_nice;
                            global.flowey_flag[17] += 1;
                            break;
                        
                        case 1:
                            message[0] = "* I wonder what the goal#  of this mine is?\t";
                            message[1] = "* Whatever it is, no one#  seems to know what#  they're doing, haha.";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_niceside;
                            global.flowey_flag[17] += 1;
                            break;
                        
                        case 2:
                            message[0] = "* Keep on, buddy!";
                            prt[0] = flowey_nice;
                            break;
                    }
                    
                    break;
                
                case "rm_dunes_20":
                    switch (global.flowey_flag[18])
                    {
                        case 0:
                            message[0] = "* Howdy!";
                            message[1] = "* This cave sure is#  ginormous!";
                            message[2] = "* I hope this rail leads#  to an exit cause it's#  getting stuffy in here.";
                            message[3] = "* Enjoy the ride, pal!";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_niceside;
                            prt[2] = flowey_worried;
                            prt[3] = flowey_nice;
                            global.flowey_flag[18] += 1;
                            break;
                        
                        case 1:
                            message[0] = "* Come on, just hop in#  the cart!";
                            message[1] = "* You've been through#  much worse.";
                            prt[0] = flowey_niceside;
                            prt[1] = flowey_nice;
                            break;
                    }
                    
                    break;
                
                case "rm_dunes_25":
                    switch (global.flowey_flag[19])
                    {
                        case 0:
                            message[0] = "* Gee, what a view.";
                            message[1] = "* Even though we aren't#  very close to the#  Castle...";
                            message[2] = "* It feels like we've#  accomplished so much as#  a team.";
                            message[3] = "* Wasn't that long ago#  that I was teachin' you#  how to dodge attacks.";
                            message[4] = "* A lot can happen in a#  short time.";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_nice;
                            prt[2] = flowey_nice;
                            prt[3] = flowey_nice;
                            prt[4] = flowey_nice;
                            global.flowey_flag[19] += 1;
                            break;
                        
                        case 1:
                            message[0] = "* As nice as this is, we#  do have places to be.";
                            message[1] = "* Let's keep a move on,#  Clover!";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_nice;
                            break;
                    }
                    
                    break;
                
                case "rm_dunes_28":
                    switch (global.flowey_flag[20])
                    {
                        case 0:
                            message[0] = "* Howdy!";
                            message[1] = "* Looks like we're back#  on solid ground!";
                            message[2] = "* That mine sure was a#  detour!";
                            message[3] = "* What a buncha slackers!";
                            message[4] = "* Anyway, let's keep up#  the pace, buddy!";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_niceside;
                            prt[2] = flowey_nice;
                            prt[3] = flowey_smirk;
                            prt[4] = flowey_nice;
                            global.flowey_flag[20] += 1;
                            break;
                        
                        case 1:
                            message[0] = "* It isn't exactly#  flattering to live in a#  sandbox, by the way.";
                            message[1] = "* Let's get going before#  the local kids think#  I'm some new toy!";
                            prt[0] = flowey_plains;
                            prt[1] = flowey_nice;
                            global.flowey_flag[20] += 1;
                            break;
                        
                        case 2:
                            message[0] = "* What's the holdup, pal?";
                            prt[0] = flowey_nice;
                            break;
                    }
                    
                    break;
                
                case "rm_dunes_37":
                    if (global.dunes_flag[24] != 0 && global.flowey_flag[21] < 6)
                        global.flowey_flag[21] = 6;
                    else if (global.dunes_flag[20] >= 9 && global.flowey_flag[21] < 5)
                        global.flowey_flag[21] = 5;
                    else if (global.dunes_flag[20] >= 7 && global.flowey_flag[21] < 3)
                        global.flowey_flag[21] = 3;
                    
                    switch (global.flowey_flag[21])
                    {
                        case 0:
                            message[0] = "* Howdy!";
                            message[1] = "* Gee, seems like my#  greeting has found its#  home.";
                            message[2] = "* Like the hat? It's a#  disguise.";
                            message[3] = "* This area is pretty#  populated so I picked#  this up to be safe!";
                            message[4] = "* You being separated#  from Martlet is pretty#  lucky but...";
                            message[5] = "* I hope this Star guy#  doesn't hold you here#  for long.";
                            message[6] = "* I may have to#  intervene if he does!";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_niceside;
                            prt[2] = flowey_nice;
                            prt[3] = flowey_nice;
                            prt[4] = flowey_niceside;
                            prt[5] = flowey_nice;
                            prt[6] = flowey_smirk;
                            global.flowey_flag[21] += 1;
                            break;
                        
                        case 1:
                            message[0] = "* I wasn't lying about#  being close to an exit#  earlier.";
                            message[1] = "* I just didn't expect...#  all of this.";
                            message[2] = "* On the bright side...";
                            message[3] = "* You may be able to#  obtain some gear#  upgrades here.";
                            message[4] = "* This roadblock isn't#  totally pointless,#  haha.";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_worried;
                            prt[2] = flowey_nice;
                            prt[3] = flowey_nice;
                            prt[4] = flowey_nice;
                            global.flowey_flag[21] += 1;
                            break;
                        
                        case 2:
                            message[0] = "* Howdy!";
                            prt[0] = flowey_nice;
                            break;
                        
                        case 3:
                            message[0] = "* Howdy!";
                            message[1] = "* ...";
                            message[2] = "* Okay, my patience is#  only so strong, Clover.";
                            message[3] = "* I hope you're not#  planning to actually#  stay here.";
                            message[4] = "* These bozos are below#  you.";
                            message[5] = "* I highly suggest that#  you make a run for it#  when the time's right.";
                            message[6] = "* Try not to let yourself#  get distracted from the#  real mission.";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_plain;
                            prt[2] = flowey_plains;
                            prt[3] = flowey_plain;
                            prt[4] = flowey_smirk;
                            prt[5] = flowey_niceside;
                            prt[6] = flowey_nice;
                            global.flowey_flag[21] += 1;
                            break;
                        
                        case 4:
                            message[0] = "* Gidde up, \"partner\"!";
                            prt[0] = flowey_nice;
                            break;
                        
                        case 5:
                            message[0] = "* Howdy!";
                            message[1] = "* I was afraid things#  would escalate.";
                            message[2] = "* Nothing you're not#  fully used to by now!";
                            message[3] = "* This is probably a good#  time to get outta here.";
                            message[4] = "* It's all gone way too#  far, dont'cha think?";
                            message[5] = "* Whatever happens, I#  wish ya luck, Clover!";
                            prt[0] = flowey_plain;
                            prt[1] = flowey_plains;
                            prt[2] = flowey_nice;
                            prt[3] = flowey_nice;
                            prt[4] = flowey_nice;
                            prt[5] = flowey_wink;
                            global.flowey_flag[21] += 1;
                            break;
                        
                        case 6:
                            message[0] = "* Let's put this place#  behind us, pal!";
                            prt[0] = flowey_nice;
                            break;
                    }
                    
                    break;
                
                case "rm_dunes_39":
                    if (global.dunes_flag[24] == 0)
                    {
                        switch (global.flowey_flag[22])
                        {
                            case 0:
                                message[0] = "* Howdy!";
                                message[1] = "* I was hoping Starlo ran#  to his parents or#  somethin'.";
                                message[2] = "* Looks like you'll have#  to confront him.";
                                message[3] = "* Do what you do best!#  I'm always rootin' for#  ya!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_niceside;
                                prt[2] = flowey_nice;
                                prt[3] = flowey_smirk;
                                global.flowey_flag[22] += 1;
                                break;
                            
                            case 1:
                                message[0] = "* We're almost outta#  here!";
                                message[1] = "* Let's knock this Starlo#  drama out!";
                                prt[0] = flowey_nice;
                                prt[1] = flowey_nice;
                                break;
                        }
                    }
                    else
                    {
                        message[0] = "* What are you doing back#  here? The exit's the#  other way, silly!";
                        message[1] = "* Let's get going.";
                        prt[0] = flowey_plain;
                        prt[1] = flowey_nice;
                    }
                    
                    break;
                
                case "rm_dunes_41":
                    switch (global.flowey_flag[23])
                    {
                        case 0:
                            message[0] = "* Howdy!\t";
                            message[1] = "* You're becoming a pro#  at this, buddy!\t";
                            message[2] = "* At this rate, you'll be#  able to confront ASGORE#  himself!";
                            prt[0] = flowey_nice;
                            prt[1] = flowey_nice;
                            prt[2] = flowey_nice;
                            global.flowey_flag[23] += 1;
                            break;
                        
                        case 1:
                            message[0] = "* Let's put this place#  behind us, pal!";
                            prt[0] = flowey_nice;
                            break;
                    }
                    
                    break;
            }
        }
    }
}
