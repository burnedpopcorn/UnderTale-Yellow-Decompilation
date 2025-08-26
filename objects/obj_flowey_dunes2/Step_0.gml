script_execute(scr_depth, 0, 0, 0, 0, 0);

if (waiter == 1)
{
    if (!instance_exists(obj_dialogue))
        msg = instance_create(x, y, obj_dialogue);
    
    with (msg)
    {
        sndfnt = sndfnt_flowey;
        
        if (global.snowdin_flag[13] == 1)
        {
            color = true;
            col_modif[0] = c_red;
            message[0] = "* Howdy, Clover!";
            message[1] = "* What a day this has#  been.";
            message[2] = "* Thanks to that guard,#  we're totally off#  course!";
            message[3] = "* It looks like she#  ditched you as well.";
            message[4] = "* I guess it can't be#  helped now.";
            message[5] = "* What's important is that#  you're alive!";
            message[5] = "* There's gotta be#  another route to#  ASGORE's Castle here.";
            message_col[5][0] = "                  #                  #           Castle      ";
            message[6] = "* Tough it out for now#  and we'll see where#  this new path takes us.";
            message[7] = "* A little excitement#  never hurt anyone!";
            message[8] = "* Well... except you. Let#  me heal you up.";
            prt[0] = flowey_nice;
            prt[1] = flowey_worried;
            prt[2] = flowey_niceside;
            prt[3] = flowey_plain;
            prt[4] = flowey_nice;
            prt[5] = flowey_nice;
            prt[6] = flowey_nice;
            prt[7] = flowey_nice;
            prt[8] = flowey_nice;
        }
        else if (global.geno_complete[2] == true)
        {
            message[0] = "* Howdy, Clover!";
            message[1] = "* Sorry about all this.";
            message[2] = "* I'm usually pretty good#  at judging where to go#  next.";
            message[3] = "* The raft must've been a#  trap set by that guard.";
            message[4] = "* You outsmarted her,#  though! I'm impressed.";
            message[5] = "* Even so, you look#  pretty beat up. Let me#  take care of that!";
            prt[0] = flowey_nice;
            prt[1] = flowey_worried;
            prt[2] = flowey_worriedside;
            prt[3] = flowey_plain;
            prt[4] = flowey_nice;
            prt[5] = flowey_nice;
        }
        else
        {
            color = true;
            col_modif[0] = c_red;
            message[0] = "* Howdy, Clover!";
            message[1] = "* Sorry about all this.";
            message[2] = "* I'm usually pretty good#  at judging where to go#  next.";
            message[3] = "* The raft must've been a#  trap set by that guard.";
            message[4] = "* Doesn't look like#  she'll be an issue#  anymore, though.";
            message[5] = "* You're far away from#  Snowdin now. Out of#  sight, out of mind!";
            message[6] = "* Now we have to find a#  new way to ASGORE's#  Castle.";
            message_col[6][0] = "                       #                     #  Castle ";
            message[7] = "* I'll leave you to it#  but before you go, let#  me patch you up.";
            prt[0] = flowey_nice;
            prt[1] = flowey_worried;
            prt[2] = flowey_worriedside;
            prt[3] = flowey_plain;
            prt[4] = flowey_nice;
            prt[5] = flowey_smirk;
            prt[6] = flowey_plain;
            prt[7] = flowey_nice;
        }
    }
    
    waiter = 2;
}

if (waiter == 2 && !instance_exists(obj_dialogue))
{
    global.dunes_flag[1] = 1;
    scr_determine_save_area();
    instance_create(__view_get(e__VW.XView, 0) + 160, __view_get(e__VW.YView, 0) + 120, obj_savebox);
    audio_play_sound(snd_mainmenu_select, 1, 0);
    waiter = 3;
}

if (waiter == 3 && !instance_exists(obj_savebox))
{
    if (global.save_count == 0)
    {
        switch (scene)
        {
            case 0:
                cutscene_wait(0.5);
                break;
            
            case 1:
                cutscene_dialogue();
                
                with (msg)
                {
                    sndfnt = sndfnt_flowey;
                    message[0] = "* Okay, what is going on?";
                    message[1] = "* I've been trying to#  stay positive and#  supportive but...";
                    message[2] = "* Seriously?";
                    message[3] = "* Why won't you save?";
                    message[4] = "* Does that word scare#  you?";
                    message[5] = "* It can't hurt you, see?";
                    message[6] = "* S - A - V - E.\t";
                    message[7] = "* Hey, you're still#  alive! It's a miracle!\t";
                    message[8] = "* ...No? Okay.";
                    message[9] = "* I just...";
                    message[10] = "* I would hope I've#  proved my#  trustworthiness by now.\t";
                    message[11] = "* But no, it's fine...\t";
                    message[12] = "* Guess you don't#  appreciate me...\t";
                    message[13] = "* Sigh...";
                    prt[0] = flowey_pissed;
                    prt[1] = flowey_pissed;
                    prt[2] = spr_flowey_angry;
                    prt[3] = flowey_pissed;
                    prt[4] = flowey_plains;
                    prt[5] = flowey_plain;
                    prt[6] = flowey_pissed;
                    prt[7] = spr_flowey_meh;
                    prt[8] = flowey_plains;
                    prt[9] = flowey_plain;
                    prt[10] = flowey_sad;
                    prt[11] = flowey_sad;
                    prt[12] = flowey_sad;
                    prt[13] = flowey_sad;
                }
                
                break;
            
            case 2:
                cutscene_wait(1);
                break;
            
            case 3:
                cutscene_dialogue();
                
                with (msg)
                {
                    sndfnt = sndfnt_flowey;
                    message[0] = "* ...\t";
                    message[1] = "* Nothing? \t";
                    message[2] = "* It was worth a shot.\t";
                    message[3] = "* Just know, you're#  running a HUGE risk by#  not saving.";
                    prt[0] = flowey_plain;
                    prt[1] = flowey_plain;
                    prt[2] = spr_flowey_disappointed;
                    prt[3] = flowey_plain;
                }
                
                break;
            
            case 4:
                scene = 0;
                image_index = 0;
                sprite_index = spr_floweyleave;
                image_speed = 0.2;
                waiter = 4;
                break;
        }
    }
    else
    {
        image_index = 0;
        sprite_index = spr_floweyleave;
        image_speed = 0.2;
        waiter = 4;
    }
}

if (waiter == 4 && image_index >= (image_number - 1))
{
    instance_destroy();
    instance_create(x, y, obj_determination);
    scr_cutscene_end();
}

if (instance_exists(obj_dialogue) && obj_dialogue.sndfnt == sndfnt_flowey)
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
