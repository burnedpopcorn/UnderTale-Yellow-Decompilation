script_execute(scr_depth, 0, 0, 0, 0, 0);

if ((global.flag[24] == 0 && room == rm_darkruins_03) && waiter == 1)
{
    scr_cutscene_start();
    waiter = 2;
    image_alpha = 255;
}

if (obj_pl.state == scr_frozen_state && waiter == 2)
{
    if (!instance_exists(obj_dialogue))
        msg = instance_create(x, y, obj_dialogue);
    
    if (global.meta_flowey_introduction_count >= 2)
    {
        with (msg)
        {
            position = 0;
            sndfnt = 96;
            color = true;
            col_modif[0] = 65535;
            col_modif[1] = 255;
            message[0] = "* Howdy!";
            message[1] = "* I'm FLOWEY. ";
            message_col[1][0] = "      FLOWEY  ";
            message[2] = "* FLOWEY the FLOWER!";
            message_col[2][0] = "  FLOWEY     FLOWER ";
            message[3] = "* Hmm...";
            message[4] = "* You look like a pretty#  confident person.";
            message[5] = "* I shouldn't hold you#  here all day should I?";
            message[6] = "* Wouldn't want to be a#  hindrance!";
            message[7] = "* I'll letcha go, but you#  should know this at#  least:";
            message[8] = "* King ASGORE is#  responsible for#  everything.";
            message_col[8][1] = "       ASGORE                                   ";
            message[9] = "* Seek him out and do#  what you must.";
            message[10] = "* Also...";
            message[11] = "* If you ever run into#  trouble, I can SAVE for#  you!";
            message[12] = "* Just come look for#  these things and I'll be#  there!";
            prt[0] = 348;
            prt[1] = 348;
            prt[2] = 348;
            prt[3] = 347;
            prt[4] = 348;
            prt[5] = 348;
            prt[6] = 347;
            prt[7] = 348;
            prt[8] = 348;
            prt[9] = 348;
            prt[10] = 347;
            prt[11] = 348;
            prt[12] = 348;
            other.waiter = 1;
            global.flag[24] = 1;
        }
    }
    else if (global.meta_flowey_introduction_count == 1)
    {
        with (msg)
        {
            position = 0;
            sndfnt = 96;
            color = true;
            col_modif[0] = 65535;
            col_modif[1] = 255;
            message[0] = "* Howdy!";
            message[1] = "* I'm FLOWEY. ";
            message_col[1][0] = "      FLOWEY  ";
            message[2] = "* FLOWEY the FLOWER!";
            message_col[2][0] = "  FLOWEY     FLOWER ";
            message[3] = "* Hmmm...";
            message[4] = "* You look confused.";
            message[5] = "* Toriel ought to have#  taught you how things#  work around here!";
            message[6] = "* She didn't?";
            message[7] = "* I guess little old me#  will have to do then.";
            message[8] = "* Do you want me to teach#  ya?";
            prt[0] = 348;
            prt[1] = 348;
            prt[2] = 348;
            prt[3] = 347;
            prt[4] = 357;
            prt[5] = 347;
            prt[6] = 348;
            prt[7] = 3251;
            prt[8] = 348;
            col_modif[0] = 65535;
            ch_msg = 8;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                global.dialogue_open = false;
                other.waiter = 3;
            }
            
            if (outcome == 2)
            {
                message[9] = "* I see...";
                message[10] = "* Going in headstrong - I#  like it!";
                message[11] = "* Well you should know#  this at least:";
                message[12] = "* Those humans you're#  after?";
                message[13] = "* Sorry, but...";
                message[14] = "* King ASGORE has already#  gotten to 'em.";
                message_col[14][0] = "";
                message_col[14][1] = "       ASGORE                             ";
                message[15] = "* On the bright side, I#  hear their SOULs are in#  holding.";
                message[16] = "* Do what you will with#  that information.";
                message[17] = "* Also...";
                message[18] = "* Whenever you need help,#  I can SAVE for you!";
                message[19] = "* That means if anything#  bad happens, I can make#  it unhappen!";
                message[20] = "* So if you ever need to#  save, come look for me!";
                message[21] = "* I'll leave these little#  things around for you.";
                prt[9] = 353;
                prt[10] = 348;
                prt[11] = 347;
                prt[12] = 348;
                prt[13] = 353;
                prt[14] = 352;
                prt[15] = 348;
                prt[16] = 348;
                prt[17] = 347;
                prt[18] = 348;
                prt[19] = 348;
                prt[20] = 348;
                prt[21] = 347;
                other.waiter = 1;
                global.flag[24] = 1;
            }
        }
    }
    else if (global.meta_flowey_introduction_count == 0)
    {
        with (msg)
        {
            position = 0;
            color = true;
            sndfnt = 96;
            message[0] = "* Howdy!#* I'm FLOWEY. #* FLOWEY the FLOWER!";
            message[1] = "* Hmm... #* You look confused!";
            message[2] = "* Toriel ought to have #  taught you how things #  work around here!";
            message[3] = "* She didn't?";
            message[4] = "* I guess little old me #  will have to do then.#* Ready? Here we go!";
            message_col[0][0] = "        #      FLOWEY  #  FLOWEY     FLOWER ";
            col_modif[0] = 65535;
            prt[0] = 348;
            prt[1] = 357;
            prt[2] = 347;
            prt[3] = 352;
            prt[4] = 348;
        }
        
        waiter = 3;
    }
}

if ((!instance_exists(obj_dialogue) && waiter == 3) && global.flag[24] == 0)
{
    instance_create(obj_pl.x, obj_pl.y, obj_heart_initiate_battle);
    global.battle_enemy_name = "flowey intro";
    global.current_room_overworld = room_get_name(room);
    global.battling_boss = false;
    global.battle_start = true;
    instance_destroy();
    waiter = 4;
}

if ((global.flag[24] == 1 && room == rm_darkruins_03) && waiter == 0)
{
    image_alpha = 255;
    obj_pl.direction = 90;
    global.cutscene = true;
    
    if (!instance_exists(obj_dialogue))
        msg = instance_create(x, y, obj_dialogue);
    
    with (msg)
    {
        position = 0;
        sndfnt = 96;
        message[0] = "* You probably want to go#  home, don'tcha?#";
        message[1] = "* Well you've got a long #  journey ahead!";
        message[2] = "* If you ever need to save,#  come look for me!";
        message[3] = "* I'll leave these little #  things around for you.";
        prt[0] = 347;
        prt[1] = 348;
        prt[2] = 348;
        prt[3] = 348;
    }
    
    waiter = 1;
}

if ((!instance_exists(obj_dialogue) && waiter == 1) && global.flag[24] == 1)
{
    image_speed = 0.2;
    sprite_index = spr_floweyleave;
}

if ((global.flag[24] == 2 && room == rm_darkruins_03) && waiter == 1 && !instance_exists(obj_dialogue))
{
    waiter = 2;
    image_alpha = 255;
    
    if (obj_pl.state == scr_frozen_state && waiter == 2)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue);
        
        if (global.meta_flowey_introduction_count >= 2)
        {
            with (msg)
            {
                position = 0;
                sndfnt = 96;
                message[0] = "* Well, I suppose that's#  that.";
                message[1] = "* Go get 'em, buddy!";
                prt[0] = 347;
                prt[1] = 348;
            }
        }
        else if (global.meta_flowey_introduction_count == 1)
        {
            with (msg)
            {
                position = 0;
                sndfnt = 96;
                message[0] = "* Well, that pretty much#  covers it!";
                message[1] = "* Good luck, pal!";
                prt[0] = 348;
                prt[1] = 3251;
            }
        }
        else if (global.meta_flowey_introduction_count == 0)
        {
            with (msg)
            {
                position = 0;
                sndfnt = 96;
                color = true;
                col_modif[0] = 255;
                message[0] = "* That way it's easy to #  find me!";
                message[1] = "* If you see one don't #  hesitate to call me! ";
                message[2] = "* And then I'll save #  for you. Like I just #  saved for you now!";
                message[3] = "* ...";
                message[4] = "* There's one more#  thing...";
                message[5] = "* The king of all the#  monsters, ASGORE...";
                message[6] = "* He's been killing#  humans.";
                message[7] = "* The only way out is#  killing him and... #  well...";
                message[8] = "* You're pretty small...";
                message[9] = "* That doesn't matter too#  much though.";
                message[10] = "* What matters is you've#  got me on your#  side!";
                message[11] = "* I'll let you get going,#  but please be careful.";
                message[12] = "* There's all sortsa #  dangerous traps down#  here.";
                message[13] = "* And some of the #  monsters in this#  place...";
                message[14] = "* I hear they don't #  like visitors.#  So good luck!";
                message_col[5][0] = "                     #            ASGORE   ";
                prt[0] = 348;
                prt[1] = 348;
                prt[2] = 347;
                prt[3] = 354;
                prt[4] = 357;
                prt[5] = 352;
                prt[6] = 352;
                prt[7] = 353;
                prt[8] = 356;
                prt[9] = 352;
                prt[10] = 348;
                prt[11] = 348;
                prt[12] = 357;
                prt[13] = 354;
                prt[14] = 357;
            }
        }
        
        waiter = 3;
    }
}

if ((!instance_exists(obj_dialogue) && waiter == 3) && global.flag[24] == 2)
{
    global.flag[24] = 3;
    scr_savegame();
    image_speed = 0.2;
    sprite_index = spr_floweyleave;
    audio_sound_gain(mus_floweynew_yellow, 0, 2000);
    global.cutscene = false;
    global.meta_flowey_introduction_count += 1;
    scr_savegame_meta();
    scr_cutscene_end();
    obj_pl.alarm[0] = 5;
    waiter = 4;
}

if (instance_exists(obj_dialogue) && obj_dialogue.sndfnt == 96)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0;
        image_index = 0;
    }
    else
    {
        image_speed = 0.2;
    }
}
