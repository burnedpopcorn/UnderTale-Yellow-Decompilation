function scr_save_flowey_snowdin()
{
    var current_room, kill_number;
    
    current_room = room_get_name(room);
    global.menu_sprite = spr_savescreen_snowdin;
    current_save_number = 1;
    scr_determine_save_area();
    
    if (global.flowey_save_number < current_save_number)
        global.flowey_save_number = current_save_number;
    
    scr_text();
    
    with (msg)
    {
        sndfnt = 96;
        kill_number = global.kill_number[2];
        
        if (global.player_can_travel)
        {
            message[0] = "* Let's get going.";
            prt[0] = 348;
        }
        else if (global.snowdin_flag[13] != 0)
        {
            if (global.route == 3)
            {
                switch (global.flowey_flag[12])
                {
                    case 0:
                        message[0] = "* Howdy!";
                        message[1] = "* ...";
                        message[2] = "* Let's head to the river#  up ahead.";
                        message[3] = "* We'll soon be outta#  here.";
                        prt[0] = 348;
                        prt[1] = 357;
                        prt[2] = 348;
                        prt[3] = 347;
                        global.flowey_flag[12]++;
                        break;
                    
                    case 1:
                        message[0] = "* ...";
                        prt[0] = 353;
                        break;
                }
            }
            else if (global.snowdin_flag[13] == 1)
            {
                switch (global.flowey_flag[12])
                {
                    case 0:
                        message[0] = "* Howdy!";
                        message[1] = "* Great job, once again!";
                        message[2] = "* I hate that so many#  monsters are ruthlessly#  attacking you,";
                        message[3] = "* But you're handling it#  with grace!";
                        message[4] = "* I'm not sure I trust#  this one.";
                        message[5] = "* Lucky for us, she#  doesn't seem too put#  together.";
                        message[6] = "* We can ditch her as#  soon as she messes#  something up.";
                        message[7] = "* I'm sure it won't take#  long, haha!";
                        prt[0] = 348;
                        prt[1] = 348;
                        prt[2] = 357;
                        prt[3] = 348;
                        prt[4] = 347;
                        prt[5] = 347;
                        prt[6] = 349;
                        prt[7] = 348;
                        global.flowey_flag[12]++;
                        break;
                    
                    case 1:
                        message[0] = "* Come on, Clover,#  Martlet's waiting for#  us.";
                        prt[0] = 348;
                        break;
                }
            }
            else if (global.snowdin_flag[13] >= 2)
            {
                switch (global.flowey_flag[12])
                {
                    case 0:
                        message[0] = "* Howdy!";
                        message[1] = "* Let's head to the river#  up ahead.";
                        message[2] = "* We'll soon be outta#  here!";
                        prt[0] = 348;
                        prt[1] = 348;
                        prt[2] = 348;
                        global.flowey_flag[12]++;
                        break;
                    
                    case 1:
                        message[0] = "* Howdy!";
                        prt[0] = 348;
                        break;
                }
            }
        }
        else if (global.kill_number[1] <= 0 && global.kill_number[2] <= 15 && global.flowey_flag[13] == 0)
        {
            global.flowey_flag[13] = 1;
            
            if (kill_number <= 10)
            {
                instance_destroy();
                scr_save_flowey_snowdin();
                exit;
            }
            
            message[0] = "* Gee, you sure are#  livin' on the edge.";
            message[1] = "* I guess they did attack#  you first.";
            message[2] = "* Can't get in trouble#  for self defense.";
            prt[0] = 357;
            prt[1] = 354;
            prt[2] = 348;
        }
        else if (global.kill_number[2] <= 10 && global.flowey_flag[13] == 1)
        {
            global.flowey_flag[13] = 2;
            
            if (kill_number <= 5)
            {
                instance_destroy();
                scr_save_flowey_snowdin();
                exit;
            }
            
            message[0] = "* Thought I saw some dust#  lyin' around.";
            message[1] = "* Might've just been snow.";
            message[2] = "* At least, that's what#  everyone else would#  think.";
            prt[0] = 348;
            prt[1] = 347;
            prt[2] = 349;
        }
        else if (global.kill_number[2] <= 5 && global.flowey_flag[13] == 2)
        {
            global.flowey_flag[13] = 3;
            
            if (kill_number <= 0)
            {
                instance_destroy();
                scr_save_flowey_snowdin();
                exit;
            }
            
            message[0] = "* Wow, kid! You mean#  business!";
            message[1] = "* What's that: Fifteen?#  Sixteen?";
            message[2] = "* Very impressive.";
            prt[0] = 348;
            prt[1] = 348;
            prt[2] = 348;
        }
        else if (global.kill_number[2] <= 0 && global.flowey_flag[13] == 3)
        {
            message[0] = "* Wow.";
            message[1] = "* Same effect.";
            message[2] = "* This place went from#  pleasant to eerie real#  quick.";
            message[3] = "* That must've been a new#  record or something.";
            message[4] = "* On the bright side, you#  won't have to pay for#  coffee anymore!";
            prt[0] = 352;
            prt[1] = 352;
            prt[2] = 353;
            prt[3] = 348;
            prt[4] = 349;
            global.flowey_flag[13] = 4;
        }
        else if (global.flowey_flag[13] == 4)
        {
            message[0] = "* Can't tell if it's the#  temperature or the#  atmosphere but wow.";
            message[1] = "* Sure is cold.";
            message[2] = "* You should get a move#  on.";
            prt[0] = 352;
            prt[1] = 352;
            prt[2] = 352;
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
                case "rm_snowdin_03_yellow":
                    if (global.route == 3)
                    {
                        switch (global.flowey_flag[7])
                        {
                            case 0:
                                message[0] = "* You been thinking over#  what I said?";
                                message[1] = "* Due respect to your#  decision making#  process...";
                                message[2] = "* But would you mind#  hurrying it up?";
                                message[3] = "* It's cold out here and#  I don't fancy freezing.";
                                prt[0] = 348;
                                prt[1] = 353;
                                prt[2] = 352;
                                prt[3] = 352;
                                break;
                            
                            case 1:
                                message[0] = "* Let's move it, kid.";
                                message[1] = "* There'll be more time#  to think later.";
                                prt[0] = 352;
                                prt[1] = 352;
                                break;
                        }
                        
                        exit;
                    }
                    
                    switch (global.flowey_flag[7])
                    {
                        case 0:
                            message[0] = "* Hey, pal!";
                            message[1] = "* What are you wasting#  time here for?";
                            message[2] = "* New area a little scary#  for ya?";
                            message[3] = "* Come on, you can do it!#  I doubt you'll even#  need a save!";
                            message[4] = "* It's just snow, ice,#  monsters, and possible#  risk of frostbite.";
                            message[5] = "* Nothin' to it, pal! Now#  get out there!";
                            prt[0] = 348;
                            prt[1] = 347;
                            prt[2] = 349;
                            prt[3] = 348;
                            prt[4] = 347;
                            prt[5] = 348;
                            global.flowey_flag[7]++;
                            break;
                        
                        case 1:
                            message[0] = "* The longer you stand#  around talking to me,";
                            message[1] = "* The higher that risk of#  frostbite gets.";
                            message[2] = "* Now move it!";
                            prt[0] = 352;
                            prt[1] = 353;
                            prt[2] = 351;
                            break;
                    }
                    
                    break;
                
                case "rm_snowdin_08_yellow":
                    switch (global.flowey_flag[8])
                    {
                        case 0:
                            message[0] = "* Howdy!";
                            message[1] = "* How are you holding up?";
                            message[2] = "* Things aren't gettin'#  any easier, huh.";
                            message[3] = "* It would be nice to#  walk through here#  without a hassle.";
                            message[4] = "* I guess that's not how#  the world works.";
                            message[5] = "* That's monsters for ya,#  can never mind their#  own business.";
                            message[6] = "* In any case, you're#  doing great!";
                            message[7] = "* Keep it up, buddy!";
                            prt[0] = 348;
                            prt[1] = 348;
                            prt[2] = 353;
                            prt[3] = 352;
                            prt[4] = 348;
                            prt[5] = 347;
                            prt[6] = 348;
                            prt[7] = 348;
                            global.flowey_flag[8]++;
                            break;
                        
                        case 1:
                            message[0] = "* Still doing great, pal.";
                            message[1] = "* I guess you needed#  extra confirmation?";
                            message[2] = "* Don't worry, I meant it#  the first time just as#  much as the second.";
                            prt[0] = 348;
                            prt[1] = 347;
                            prt[2] = 349;
                            global.flowey_flag[8]++;
                            break;
                        
                        case 2:
                            message[0] = "* I appreciate you#  wanting me to compliment#  you a third time.";
                            message[1] = "* But you don't have to#  lean on me so much for#  emotional support.";
                            message[2] = "* You can believe in#  yourself a little too,#  pal.";
                            prt[0] = 352;
                            prt[1] = 353;
                            prt[2] = 348;
                            break;
                    }
                    
                    break;
                
                case "rm_snowdin_12_yellow":
                    switch (global.flowey_flag[9])
                    {
                        case 0:
                            message[0] = "* Howdy!";
                            message[1] = "* Must say, I didn't#  remember this place#  being so...";
                            message[2] = "* You know...";
                            message[3] = "* Colorful.";
                            message[4] = "* Really can't go two#  seconds without getting#  harrassed around here.";
                            message[5] = "* Hasn't anyone heard of#  personal space?";
                            message[6] = "* Unless someone can mail#  you to ASGORE, I don't#  see why we need 'em.";
                            message[7] = "* Anyway, let's get a#  move on. Time's a#  wastin'.";
                            prt[0] = 348;
                            prt[1] = 348;
                            prt[2] = 347;
                            prt[3] = 357;
                            prt[4] = 352;
                            prt[5] = 353;
                            prt[6] = 348;
                            prt[7] = 348;
                            global.flowey_flag[9]++;
                            break;
                        
                        case 1:
                            message[0] = "* Whatcha waitin' around#  for?";
                            message[1] = "* You have a job to do.";
                            prt[0] = 348;
                            prt[1] = 349;
                            global.flowey_flag[9]++;
                            break;
                        
                        case 2:
                            message[0] = "* Look, I get it, you#  wanna be thorough.";
                            message[1] = "* Two saves is no better#  than one, kid!";
                            message[2] = "* We got places to see,#  warm places most of#  'em.";
                            message[3] = "* Let's get going!";
                            prt[0] = 352;
                            prt[1] = 353;
                            prt[2] = 348;
                            prt[3] = 348;
                            break;
                    }
                    
                    break;
                
                case "rm_snowdin_14_yellow":
                    switch (global.flowey_flag[10])
                    {
                        case 0:
                            message[0] = "* Now THIS is what I'm#  talkin' about!";
                            message[1] = "* A perfect place to#  relax and destress.";
                            message[2] = "* Well, not perfect, a#  bit crowded for my#  taste.";
                            message[3] = "* At least that keeps#  things interesting.";
                            prt[0] = 348;
                            prt[1] = 347;
                            prt[2] = 357;
                            prt[3] = 349;
                            global.flowey_flag[10]++;
                            break;
                        
                        case 1:
                            message[0] = "* Feel free to slack off#  for a while, kid.";
                            message[1] = "* I'll be here checking#  out the hot springs.";
                            prt[0] = 347;
                            prt[1] = 348;
                            break;
                    }
                    
                    break;
                
                case "rm_snowdin_20_yellow":
                    if (global.snowdin_flag[13] == 0)
                    {
                        switch (global.flowey_flag[11])
                        {
                            case 0:
                                message[0] = "* Howdy!";
                                message[1] = "* We're almost out of#  here.";
                                message[2] = "* I'm surprised that#  guard never saw you#  nearby, ya know?";
                                message[3] = "* Their puzzles sure#  weren't impressive,#  that's for certain.";
                                message[4] = "* Knowing that, I#  wouldn't worry if you#  run into them.";
                                message[5] = "* Whatever happens, I#  wish you luck!";
                                prt[0] = 348;
                                prt[1] = 348;
                                prt[2] = 347;
                                prt[3] = 349;
                                prt[4] = 3251;
                                prt[5] = 348;
                                global.flowey_flag[11]++;
                                break;
                            
                            case 1:
                                message[0] = "* Don't tell me you're#  scared of the Royal#  Guard now.";
                                message[1] = "* You saw that lady,#  right? You'll be fine.";
                                message[2] = "* Trust me a little, will#  ya?";
                                prt[0] = 347;
                                prt[1] = 348;
                                prt[2] = 3251;
                                global.flowey_flag[11]++;
                                break;
                            
                            case 2:
                                message[0] = "* Let's do this already!";
                                prt[0] = 348;
                                break;
                        }
                    }
                    
                    break;
            }
        }
    }
}
