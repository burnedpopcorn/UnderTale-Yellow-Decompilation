event_inherited();
depth = 100000;

if (global.dunes_flag[16] > 0 && npc_flag <= 2)
    npc_flag = 3;

if (global.dunes_flag[24] != 0 && npc_flag <= 2)
    npc_flag = 3;

if (global.geno_complete[2] && npc_flag < 4)
    npc_flag = 4;

if (interact)
    can_talk = true;

if (can_talk)
{
    switch (npc_flag)
    {
        case 0:
            if (scene == 0)
            {
                scr_cutscene_start();
                scr_text();
                is_talking = true;
                
                with (msg)
                {
                    color = true;
                    col_modif[0] = 65535;
                    ch_msg = 2;
                    ch[1] = "Hazards";
                    ch[2] = "Foreman";
                    message[0] = "* Hello there!";
                    message[1] = "* My name is Angie! I'm#  the receptionist of#  Mining Co.";
                    message[2] = "* How may I help you?";
                    prt[0] = 363;
                    prt[1] = 364;
                    prt[2] = 364;
                    
                    if (outcome == 1)
                    {
                        message[3] = "* Yes, I am aware of the#  dangers that lie#  outside the mines.";
                        message[4] = "* I could investigate#  but...";
                        message[5] = "* My husband, Gillbert#  needs to take more#  initiative.";
                        message[6] = "* I asked him to do it,#  let's see... six hours#  ago.";
                        message[7] = "* Sigh...";
                        message[8] = "* Baby steps.";
                        message[9] = "* Anyways...";
                        message[10] = "* I've heard that several#  hazards have been seen#  around the Dunes.";
                        message_col[10][0] = "                         #                        #             Dunes ";
                        message[11] = "* I hope it isn't those#  Wild East monsters#  pulling pranks.";
                        message_col[11][0] = "                       #  Wild East         #                 ";
                        message[12] = "* They tend to step out#  of line every now and#  then.";
                        message[13] = "* I can't help but feel#  they're a bad influence#  on Moray.";
                        message[14] = "* Ah, these matters don't#  pertain to you.#  I apologize.";
                        prt[3] = 363;
                        prt[4] = 365;
                        prt[5] = 363;
                        prt[6] = 363;
                        prt[7] = 365;
                        prt[8] = 363;
                        prt[9] = 363;
                        prt[10] = 363;
                        prt[11] = 363;
                        prt[12] = 365;
                        prt[13] = 365;
                        prt[14] = 363;
                        other.npc_flag++;
                        other.can_talk = false;
                        other.scene = 0;
                        global.cutscene = false;
                    }
                    
                    if (outcome == 2)
                    {
                        instance_destroy();
                        other.scene++;
                    }
                }
            }
            else if (scene == 1)
            {
                is_talking = true;
                scr_text();
                
                with (msg)
                {
                    message[0] = "* The Foreman right over#  there is my husband,#  Gillbert.";
                    message[1] = "* He's the boss of the#  mines but I do more#  than him around here.";
                    prt[0] = 363;
                    prt[1] = 364;
                }
                
                timer = 20;
                
                if (!global.dialogue_open)
                    scene++;
            }
            else if (scene == 2)
            {
                if (!scr_timer())
                    exit;
                
                scr_text();
                
                with (msg)
                {
                    if (message_current == 1 || message_current == 5)
                    {
                        obj_big_boss.is_talking = false;
                        other.is_talking = true;
                    }
                    else
                    {
                        obj_big_boss.is_talking = true;
                        other.is_talking = false;
                    }
                    
                    message[0] = "* What was that?";
                    prt[0] = 359;
                    message[1] = "* I work harder than you.";
                    prt[1] = 363;
                    message[2] = "* Hey!";
                    message[3] = "* ...";
                    message[4] = "* Yeah, you're right.";
                    prt[2] = 361;
                    prt[3] = 361;
                    prt[4] = 359;
                    message[5] = "* It's a mutual#  understanding.";
                    prt[5] = 364;
                    message[6] = "* And I love you for it.";
                    prt[6] = 362;
                }
                
                if (!global.dialogue_open)
                {
                    scene = 0;
                    npc_flag++;
                    can_talk = false;
                    scr_cutscene_end();
                }
            }
            
            break;
        
        case 1:
            scr_text();
            is_talking = true;
            
            with (msg)
            {
                sndfnt = 99;
                message[0] = "* This business is more#  important than it may#  seem.";
                message[1] = "* It isn't easy for#  monsters to find a job#  these days.";
                message[2] = "* For that reason, we#  hire anyone who applies!";
                message[3] = "* All except for children.#  I think that's illegal.";
                prt[0] = 363;
                prt[1] = 365;
                prt[2] = 363;
                prt[3] = 363;
            }
            
            can_talk = false;
            npc_flag++;
            break;
        
        case 2:
            if (scene == 0)
            {
                scr_cutscene_start();
                scr_text();
                is_talking = true;
                
                with (msg)
                {
                    sndfnt = 99;
                    message[0] = "* You have a good journey!";
                    message[1] = "* Heard it could get#  rocky!";
                    prt[0] = 364;
                    prt[1] = 363;
                }
                
                if (!global.dialogue_open)
                {
                    timer = 20;
                    scene++;
                }
            }
            else if (scene == 1)
            {
                if (!scr_timer())
                    exit;
                
                scr_text();
                
                with (msg)
                {
                    sndfnt = 99;
                    
                    if (message_current == 1)
                    {
                        obj_big_boss.is_talking = false;
                        other.is_talking = true;
                    }
                    else
                    {
                        obj_big_boss.is_talking = true;
                        other.is_talking = false;
                    }
                    
                    message[0] = "* Haha! Good one, dear!";
                    message[1] = "* I've been waiting to#  say that.";
                    message[2] = "* That's my Angie!";
                    prt[0] = 359;
                    prt[1] = 364;
                    prt[2] = 362;
                }
                
                if (!global.dialogue_open)
                {
                    scene = 0;
                    can_talk = false;
                    scr_cutscene_end();
                }
            }
            
            break;
        
        case 3:
            is_talking = true;
            scr_text();
            
            with (msg)
            {
                sndfnt = 99;
                message[0] = "* Hope you've had a good#  time at Mining Co.!";
                prt[0] = 364;
            }
            
            can_talk = false;
            break;
        
        case 4:
            is_talking = true;
            scr_text();
            
            with (msg)
            {
                sndfnt = 99;
                message[0] = "* Oh, hello.";
                message[1] = "* If you need a place to#  hide out right now, you#  can stay here.";
                message[2] = "* Would hate a youngin#  like you to get into#  trouble.";
                prt[0] = 365;
                prt[1] = 363;
                prt[2] = 365;
            }
            
            can_talk = false;
            npc_flag++;
            break;
        
        case 5:
            is_talking = true;
            scr_text();
            
            with (msg)
            {
                sndfnt = 99;
                message[0] = "* I hope little Moray is#  alright...";
                message[1] = "* Need to go to the Wild#  East as soon as I can.";
                prt[0] = 365;
                prt[1] = 365;
            }
            
            can_talk = false;
            break;
    }
}
