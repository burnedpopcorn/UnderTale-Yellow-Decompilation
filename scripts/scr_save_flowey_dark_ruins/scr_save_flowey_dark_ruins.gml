function scr_save_flowey_dark_ruins()
{
    var current_room, kill_number;
    
    current_room = room_get_name(room);
    current_save_number = 1;
    scr_determine_save_area();
    
    if (global.flowey_save_number < current_save_number)
        global.flowey_save_number = current_save_number;
    
    scr_text();
    
    with (msg)
    {
        sndfnt = 96;
        kill_number = global.kill_number[1];
        
        if (global.kill_number[1] <= 15 && global.flowey_flag[6] == 0)
        {
            global.flowey_flag[6] = 1;
            
            if (kill_number <= 10)
            {
                instance_destroy();
                scr_save_flowey_dark_ruins();
                exit;
            }
            
            message[0] = "* Gee, it's getting a#  little dusty around here,#  huh?";
            prt[0] = 357;
        }
        else if (global.kill_number[1] <= 10 && global.flowey_flag[6] == 1)
        {
            global.flowey_flag[6] = 2;
            
            if (kill_number <= 5)
            {
                instance_destroy();
                scr_save_flowey_dark_ruins();
                exit;
            }
            
            col_modif[0] = 255;
            message[0] = "* Not too fond of that#  whole mercy thing?";
            message[1] = "* That's alright, whatever#  gets you to ASGORE#  friend!";
            message_col[0][1] = "                          #              ASGORE";
            prt[0] = 353;
            prt[1] = 348;
        }
        else if (global.kill_number[1] <= 5 && global.flowey_flag[6] == 2)
        {
            global.flowey_flag[6] = 3;
            
            if (kill_number <= 0)
            {
                instance_destroy();
                scr_save_flowey_dark_ruins();
                exit;
            }
            
            message[0] = "* You've really got some#  passion there.";
            message[1] = "* There's only " + string(global.kill_number[scr_determine_world_value_yellow()]) + " of the#  monsters left not#  counting the weirdo.";
            message[2] = "* Good luck, pal!";
            prt[0] = 357;
            prt[1] = 348;
            prt[2] = 347;
            global.flowey_flag[6] = 3;
        }
        else if (global.kill_number[1] <= 0 && global.flowey_flag[6] == 3)
        {
            message[0] = "* Wow, it sure is quiet#  around here.";
            message[1] = "* I gotta say, it's#  a bit nice with no#  disturbances.";
            message[2] = "* Well, nothing left to#  do here I guess. Let's#  keep going!";
            prt[0] = 347;
            prt[1] = 348;
            prt[2] = 348;
            global.flowey_flag[6] = 4;
        }
        else if (global.flowey_flag[6] == 4 && current_room != "rm_darkruins_16")
        {
            message[0] = "* Let's keep moving!";
            prt[0] = 348;
        }
        else if (other.current_save_number < global.flowey_save_number)
        {
            message[0] = "* What are you doing back#  here? The exit's the#  other way, silly!";
            message[1] = "* Let's get going.";
            prt[0] = 352;
            prt[1] = 348;
        }
        else
        {
            switch (current_room)
            {
                case "rm_darkruins_03":
                    switch (global.flowey_flag[0])
                    {
                        case 0:
                            message[0] = "* Howdy!#* Looks like you got#  it then!  ";
                            prt[0] = 348;
                            global.flowey_flag[0]++;
                            break;
                        
                        case 1:
                            message[0] = "* Why the long face, pal?";
                            message[1] = "* Don't worry, this place#  is way better than up#  there!";
                            message[2] = "* That old lady would've#  just  spoiled all of#  our fun!";
                            message[3] = "* Come on, let's not stand#  around here all day!";
                            prt[0] = 348;
                            prt[1] = 347;
                            prt[2] = 357;
                            prt[3] = 348;
                            global.flowey_flag[0]++;
                            break;
                        
                        case 2:
                            message[0] = "* You... really only need#  one save...";
                            message[1] = "* Do you not trust me or#  something?";
                            message[2] = "* Come on!#* I'm your pal!";
                            message[3] = "* I got your back!";
                            prt[0] = 352;
                            prt[1] = 357;
                            prt[2] = 347;
                            prt[3] = 348;
                            global.flowey_flag[0]++;
                            break;
                        
                        case 3:
                        case 4:
                        case 5:
                        case 7:
                            message[0] = "* You should get going...";
                            prt[0] = 352;
                            
                            if (global.flowey_flag[0] != 7)
                                global.flowey_flag[0]++;
                            
                            break;
                        
                        case 6:
                            message[0] = "* Really?#* What is this about?";
                            message[1] = "* I told you already, you#  don't need that stupid#  goat lady!";
                            message[2] = "* She couldn't have#  protected you anyway!";
                            message[3] = "* You have me! #* I'm way better!";
                            message[4] = "* I'm your pal Flowey!";
                            message[5] = "* I'm the only friend #  you'll ever need!";
                            message[6] = "* Can Toriel save for you?#* NO!";
                            message[7] = "* So let's get out of#  here while we're#  still young!";
                            prt[0] = 351;
                            prt[1] = 351;
                            prt[2] = 351;
                            prt[3] = 347;
                            prt[4] = 348;
                            prt[5] = 347;
                            prt[6] = 348;
                            prt[7] = 357;
                            global.flowey_flag[0]++;
                            break;
                    }
                    
                    break;
                
                case "rm_darkruins_08":
                    switch (global.flowey_flag[1])
                    {
                        case 0:
                            message[0] = "* Howdy!";
                            prt[0] = 348;
                            message[1] = "* I see you're still in#  one piece!";
                            prt[1] = 357;
                            message[2] = "* You saw that weirdo#  right?";
                            prt[2] = 352;
                            message[3] = "* If you want to get out#  of here you'll have to#  go through him.";
                            prt[3] = 357;
                            message[4] = "* He shouldn't be a#  problem though.";
                            prt[4] = 348;
                            message[5] = "* And if he is, that's why#  I'm here!";
                            prt[5] = 348;
                            global.flowey_flag[1]++;
                            break;
                        
                        case 1:
                            message[0] = "* Again?";
                            prt[0] = 352;
                            message[1] = "* Okay, you're double#  saved now!";
                            prt[1] = 347;
                            global.flowey_flag[1]++;
                            break;
                        
                        case 2:
                            message[0] = "* Again?";
                            message[0] = "* Really?";
                            prt[0] = 351;
                            message[1] = "* How many saves do you #  need?";
                            prt[1] = 351;
                            break;
                    }
                    
                    break;
                
                case "rm_darkruins_10":
                    switch (global.flowey_flag[2])
                    {
                        case 0:
                            message[0] = "* Howdy!";
                            message[1] = "* Golly, this place sure#  is dead!";
                            message[2] = "* All the monsters are#  all quiet and lurking.";
                            message[3] = "* That's not like monsters#  at all!";
                            message[4] = "* Don't let this ruin#  your impression of#  the Underground!";
                            message[5] = "* We'll leave this#  dump behind soon#  enough!";
                            prt[0] = 348;
                            prt[1] = 352;
                            prt[2] = 352;
                            prt[3] = 347;
                            prt[4] = 348;
                            prt[5] = 348;
                            global.flowey_flag[2]++;
                            break;
                        
                        case 1:
                            message[0] = "* You're already saved,#  let's get a move#  on!";
                            prt[0] = 348;
                            break;
                    }
                    
                    break;
                
                case "rm_darkruins_12":
                    switch (global.flowey_flag[3])
                    {
                        case 0:
                            message[0] = "* Howdy!";
                            message[1] = "* You seem to be doing#  well!";
                            
                            if (global.death_count_total > 1)
                            {
                                message[2] = "* Only " + string(global.death_count_total) + " deaths!";
                            }
                            else if (global.death_count_total == 1)
                            {
                                message[2] = "* Only 1 death!";
                            }
                            else
                            {
                                message[2] = "* You haven't even died#  once!";
                                message[3] = "* Not that I thought you#  would, but it's nice#  to be prepared!";
                            }
                            
                            if (global.death_count_total > 0)
                            {
                                message[3] = "* See? Aren't you glad#  you have me around?!";
                                message[4] = "* It's great to be such#  a needed friend!";
                            }
                            
                            prt[0] = 348;
                            prt[1] = 347;
                            prt[2] = 348;
                            prt[3] = 348;
                            prt[4] = 347;
                            
                            if (global.death_count_total > 0)
                                global.flowey_flag[3] = 1;
                            else
                                global.flowey_flag[3] = 2;
                            
                            break;
                        
                        case 1:
                            message[0] = "* What? Not happy with#  your death tally?";
                            message[1] = "* Haven't you ever heard#  the phrase: Don't shoot #  the messenger?";
                            prt[0] = 357;
                            prt[1] = 347;
                            global.flowey_flag[3]++;
                            break;
                        
                        case 2:
                            message[0] = "* Come on, buddy!";
                            message[1] = "* You can save more#  later!";
                            prt[0] = 352;
                            prt[1] = 352;
                            break;
                    }
                    
                    break;
                
                case "rm_darkruins_16":
                    if (global.flag[17] == 0)
                    {
                        switch (global.flowey_flag[4])
                        {
                            case 0:
                                message[0] = "* Howdy!";
                                message[1] = "* Not too far now!";
                                message[2] = "* Just gotta deal with#  that downer!";
                                message[3] = "* Then you're out of#  the Ruins!";
                                message[4] = "* See you on the other#  side, pal!";
                                prt[0] = 348;
                                prt[1] = 348;
                                prt[2] = 348;
                                prt[3] = 347;
                                prt[4] = 348;
                                global.flowey_flag[4]++;
                                break;
                            
                            case 1:
                                message[0] = "* What?";
                                message[1] = "* You scared of that#  doom and gloom guy?";
                                message[2] = "* Look, you just gotta#  fight your way through#  him!";
                                message[3] = "* He'll go down easy!";
                                message[4] = "* And in case you#  haven't noticed...";
                                message[5] = "* He really won't be#  missed!";
                                message[6] = "* So go get him!";
                                prt[0] = 352;
                                prt[1] = 357;
                                prt[2] = 348;
                                prt[3] = 348;
                                prt[4] = 347;
                                prt[5] = 348;
                                prt[6] = 348;
                                global.flowey_flag[4]++;
                                break;
                            
                            case 2:
                                message[0] = "* Come on, kid!#* Show him who's boss!";
                                prt[0] = 348;
                                break;
                        }
                    }
                    else if (global.route == 3 || global.flag[17] >= 3 || global.geno_complete[1] == true)
                    {
                        switch (global.flowey_flag[5])
                        {
                            case 0:
                                message[0] = "* Well that's that.";
                                message[1] = "* Gee, what a start to our#  journey.";
                                message[2] = "* I can't say I expected#  this but it's your#  choice.";
                                message[3] = "* Anyway...";
                                message[4] = "* If you want to explore#  more before we leave#  you should know this.";
                                message[5] = "* I've removed all my save#  points besides this one#  from here.";
                                message[6] = "* No use in going back#  there.";
                                message[7] = "* I'll be at this one and#  this one only until#  you wanna leave.";
                                message[8] = "* See you later!";
                                prt[0] = 352;
                                prt[1] = 357;
                                prt[2] = 348;
                                prt[3] = 347;
                                prt[4] = 347;
                                prt[5] = 348;
                                prt[6] = 347;
                                prt[7] = 348;
                                prt[8] = 348;
                                global.flowey_flag[5]++;
                                break;
                            
                            case 1:
                                message[0] = "* The exit is through#  his house.";
                                message[1] = "* Go on.";
                                prt[0] = 348;
                                prt[1] = 347;
                                break;
                        }
                    }
                    else if (global.flag[17] == 1)
                    {
                        switch (global.flowey_flag[5])
                        {
                            case 0:
                                message[0] = "* Nice job, kid!";
                                message[1] = "* I bet your conscience#  feels light as a#  feather.";
                                message[2] = "* Making friends is a good#  way of getting through#  here.";
                                message[3] = "* Avoiding conflict,#  keeping yourself#  safe...";
                                message[4] = "* I get that.";
                                message[5] = "* We just started and#  you've already#  befriended me, and him.";
                                message[6] = "* Aren't you the popular#  one!";
                                message[7] = "* By the way...";
                                message[8] = "* If you want to explore#  more before we leave#  you should know this.";
                                message[9] = "* I've removed all my save#  points besides this one#  from here.";
                                message[10] = "* No use in going back#  there.";
                                message[11] = "* I'll be at this one and#  this one only until#  you wanna leave.";
                                message[12] = "* See you later!";
                                prt[0] = 348;
                                prt[1] = 348;
                                prt[2] = 348;
                                prt[3] = 348;
                                prt[4] = 347;
                                prt[5] = 348;
                                prt[6] = 347;
                                prt[7] = 348;
                                prt[8] = 348;
                                prt[9] = 348;
                                prt[10] = 348;
                                prt[11] = 348;
                                prt[12] = 348;
                                global.flowey_flag[5]++;
                                break;
                            
                            case 1:
                                message[0] = "* The exit is through#  his house.";
                                message[1] = "* Go on.";
                                prt[0] = 348;
                                prt[1] = 347;
                                break;
                        }
                    }
                    else if (global.flag[17] == 2)
                    {
                        switch (global.flowey_flag[5])
                        {
                            case 0:
                                message[0] = "* Well done!";
                                message[1] = "* That was almost too easy.";
                                message[2] = "* He sure put up a fight#  but you handled it with#  skill.";
                                message[3] = "* It's not like anyone#  will miss that downer#  anyway.";
                                message[4] = "* By the way...";
                                message[5] = "* If you want to explore#  more before we leave#  you should know this.";
                                message[6] = "* I've removed all my save#  points besides this one#  from here.";
                                message[7] = "* No use in going back#  there.";
                                message[8] = "* I'll be at this one and#  this one only until#  you wanna leave.";
                                message[9] = "* See you later!";
                                prt[0] = 348;
                                prt[1] = 348;
                                prt[2] = 348;
                                prt[3] = 349;
                                prt[4] = 347;
                                prt[5] = 348;
                                prt[6] = 348;
                                prt[7] = 348;
                                prt[8] = 348;
                                prt[9] = 348;
                                global.flowey_flag[5]++;
                                break;
                            
                            case 1:
                                message[0] = "* The exit is through#  his house.";
                                message[1] = "* Go on.";
                                prt[0] = 348;
                                prt[1] = 347;
                                break;
                        }
                    }
                    
                    break;
            }
        }
    }
    
    global.menu_sprite = spr_savescreen_ruins;
}
