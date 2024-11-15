function scr_save_flowey_endgame()
{
    var current_room, death_count;
    
    current_room = room_get_name(room);
    current_save_number = 1;
    scr_determine_save_area();
    
    if (global.flowey_save_number < current_save_number)
        global.flowey_save_number = current_save_number;
    
    scr_text();
    
    with (msg)
    {
        sndfnt = 96;
        
        switch (current_room)
        {
            case "rm_hotland_complex_1":
                if (global.route == 1 || global.route == 2)
                {
                    switch (global.flowey_flag[36])
                    {
                        case 0:
                            death_count = global.death_count_total;
                            message[0] = "* ...";
                            message[1] = "* Oh-Howdy!";
                            message[2] = "* We're nearing the#  Castle now.";
                            message[3] = "* What an eventful day!";
                            message[4] = "* For kicks and giggles,#  why don't we tally up#  your death total?";
                            message[5] = "* Drum roll please!";
                            message[6] = "* Badabadabadabadaba...";
                            prt[0] = 353;
                            prt[1] = 348;
                            prt[2] = 348;
                            prt[3] = 347;
                            prt[4] = 3251;
                            prt[5] = 348;
                            prt[6] = 348;
                            
                            if (global.save_count > 0)
                            {
                                message[7] = "* You died " + string(death_count) + " times!";
                                
                                if (death_count == 1)
                                    message[7] = "* You died " + string(death_count) + " time!";
                                
                                prt[7] = 348;
                                
                                if (death_count >= 1)
                                {
                                    message[8] = "* Wow!";
                                    message[9] = "* If I wasn't here to#  help, this all would've#  been a disaster!";
                                    message[10] = "* Maybe jumping down a#  chasm gung-ho wasn't the#  brightest idea...";
                                    message[11] = "* But hey, all's well#  that ends well!";
                                    prt[8] = 348;
                                    prt[9] = 3251;
                                    prt[10] = 347;
                                    prt[11] = 348;
                                    global.flowey_flag[36] = 1;
                                }
                                else
                                {
                                    message[8] = "* Uh... ";
                                    message[9] = "* That can't be right...";
                                    message[10] = "* Zero? Really?";
                                    message[11] = "* Geez...";
                                    message[12] = "* I offered my services#  for a reason.";
                                    message[13] = "* I mean come on! Die a#  little!";
                                    prt[8] = 353;
                                    prt[9] = 352;
                                    prt[10] = 356;
                                    prt[11] = 354;
                                    prt[12] = 357;
                                    prt[13] = 349;
                                    global.flowey_flag[36] = 2;
                                }
                            }
                            else
                            {
                                message[7] = "* Oh wait, it's ZERO.";
                                message[8] = "* For you to be standing#  in this building, it has#  to be zero.\t";
                                message[9] = "* I honestly can't#  believe you made it#  here.";
                                message[10] = "* You are a piece of work#  sometimes, you know#  that?\t";
                                message[11] = "* Sigh...";
                                message[12] = "* Yeah, go on.\t";
                                message[13] = "* Save, don't save, your#  choice.";
                                message[14] = "* Just remember that I#  was always here for you.";
                                message[15] = "* Like a good friend#  should be.";
                                prt[7] = 3640;
                                prt[8] = 353;
                                prt[9] = 352;
                                prt[10] = 348;
                                prt[11] = 352;
                                prt[12] = 353;
                                prt[13] = 352;
                                prt[14] = 352;
                                prt[15] = 347;
                                global.flowey_flag[36] = 2;
                            }
                            
                            break;
                        
                        case 1:
                            message[0] = "* What? Confused?";
                            message[1] = "* Or do ya think keeping#  a death tally is morbid?";
                            message[2] = "* Knowing what could've#  been keeps you humble!";
                            message[3] = "* Grateful for everyone#  who helped you get where#  you are!";
                            message[4] = "* At least that's my#  \"flowosophy.\"";
                            prt[0] = 348;
                            prt[1] = 347;
                            prt[2] = 3251;
                            prt[3] = 348;
                            prt[4] = 349;
                            global.flowey_flag[36]++;
                            break;
                        
                        case 2:
                            message[0] = "* We got places to be,#  pal!";
                            message[1] = "* Chop chop!";
                            prt[0] = 348;
                            prt[1] = 347;
                            break;
                    }
                    
                    global.menu_sprite = spr_savescreen_hotland;
                    exit;
                }
                else
                {
                    switch (global.flowey_flag[36])
                    {
                        case 0:
                            message[0] = "* Well.";
                            message[1] = "* Word sure gets around.";
                            message[2] = "* This is what'cha get#  when you toss out#  “subtlety.”";
                            message[3] = "* Waging war without a#  care for#  repercussions...";
                            message[4] = "* I tried to warn you but#  it's too late now.";
                            message[5] = "* Sigh...";
                            message[6] = "* Play it cool from here#  on out, will you?";
                            prt[0] = 352;
                            prt[1] = 353;
                            prt[2] = 353;
                            prt[3] = 352;
                            prt[4] = 353;
                            prt[5] = 352;
                            prt[6] = 352;
                            global.flowey_flag[36] = 1;
                            break;
                        
                        case 1:
                            message[0] = "* We need to reach the#  Castle.";
                            message[1] = "* The King awaits...";
                            prt[0] = 353;
                            prt[1] = 348;
                            global.flowey_flag[36]++;
                            break;
                        
                        case 2:
                            message[0] = "* ...";
                            prt[0] = 353;
                            break;
                    }
                    
                    global.menu_sprite = spr_savescreen_hotland;
                    exit;
                }
                
                break;
            
            default:
                switch (global.flowey_flag[38])
                {
                    case 0:
                        message[0] = "* Quite the turn of#  events, huh?";
                        message[1] = "* Well good thing I'm on#  the winning side, haha!";
                        message[2] = "* I bet you'll handle#  Ceroba like it's#  nothing!";
                        prt[0] = 348;
                        prt[1] = 347;
                        prt[2] = 348;
                        global.flowey_flag[38] += 1;
                        break;
                    
                    case 1:
                        message[0] = "* Best be heading to#  Hotland!";
                        message[1] = "* Who knows how long ya#  got?";
                        prt[0] = 347;
                        prt[1] = 348;
                        global.flowey_flag[38] += 1;
                        break;
                    
                    case 2:
                        message[0] = "* You know that elevator#  at the end of the#  Steamworks?";
                        message[1] = "* I believe it's your#  ticket!";
                        message[2] = "* Let's deal with that#  backstabber already!";
                        prt[0] = 348;
                        prt[1] = 3251;
                        prt[2] = 348;
                        break;
                }
                
                break;
        }
    }
}
