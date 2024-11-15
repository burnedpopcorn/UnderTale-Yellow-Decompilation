event_inherited();

if (interact && !instance_exists(obj_dialogue))
    can_talk = 1;

if (can_talk)
{
    switch (npc_flag)
    {
        case 0:
            if (scene == 0)
            {
                if (global.geno_complete[2] == false)
                {
                    is_talking = 1;
                    scr_cutscene_start();
                    scr_text();
                    
                    with (msg)
                    {
                        message[0] = "* Welcome to the Mining#  Co. Mines! (I wasn't#  expecting visitors...)";
                        message[1] = "* If you have an inquiry,#  please take it up with#  my assistant.";
                        prt[0] = 359;
                        prt[1] = 359;
                    }
                    
                    if (!global.dialogue_open)
                    {
                        scene++;
                        timer = 30;
                    }
                }
                else
                {
                    is_talking = true;
                    can_talk = false;
                    scr_text();
                    
                    with (msg)
                    {
                        message[0] = "* I heard some rumblings#  of danger back west.";
                        message[1] = "* Sent everyone home for#  now.";
                        message[2] = "* Waiting to see if it#  was a false alarm or#  not.";
                        message[3] = "* Sure hope everything's#  okay...";
                        prt[0] = 359;
                        prt[1] = 359;
                        prt[2] = 359;
                        prt[3] = 359;
                    }
                    
                    npc_flag++;
                }
            }
            else if (scene == 1)
            {
                if (!scr_timer())
                    exit;
                
                is_talking = 0;
                obj_miner_receptionist.is_talking = 1;
                scr_text();
                
                with (msg)
                {
                    message[0] = "* Gilbert, please. We've#  been married 27 years.";
                    message[1] = "* You can handle the#  questions yourself.";
                    prt[0] = 365;
                    prt[1] = 363;
                }
                
                if (!global.dialogue_open)
                    scene++;
            }
            else if (scene == 2)
            {
                is_talking = 1;
                obj_miner_receptionist.is_talking = 0;
                scr_text();
                
                with (msg)
                {
                    ch_msg = 7;
                    ch[1] = "Firing";
                    ch[2] = "Elevator";
                    message[0] = "* C-certainly dear!";
                    message[1] = "* Ahem...";
                    message[2] = "* If you're gonna ask#  about the hot#  conditions...";
                    message[3] = "* I'm ordering more#  Glacialstone Cold Packs#  later today.";
                    message[4] = "* And if you're gonna ask#  about the falling rocks,";
                    message[5] = "* I'm gonna investigate#  it soon!";
                    message[6] = "* No need to worry,#  everything is fine!";
                    message[7] = "* So... what is it?";
                    prt[0] = 361;
                    prt[1] = 359;
                    prt[2] = 359;
                    prt[3] = 359;
                    prt[4] = 359;
                    prt[5] = 359;
                    prt[6] = 359;
                    prt[7] = 361;
                    
                    if (outcome == 1)
                    {
                        instance_destroy();
                        other.scene = 3;
                        exit;
                    }
                    else if (outcome == 2)
                    {
                        message[8] = "* The elevator was broken?#  That can't be right.";
                        message[9] = "* We refurbished it last#  month.";
                        message[10] = "* The company was given a#  repair budget for the#  whole mine.";
                        message[11] = "* Turns out marble walls#  and gold tiling adds up#  quick.";
                        message[12] = "* We ran out.";
                        message[13] = "* Gorgeous baseboard job,#  though. Totally worth#  it.";
                        prt[8] = 361;
                        prt[9] = 359;
                        prt[10] = 359;
                        prt[11] = 359;
                        prt[12] = 361;
                        prt[13] = 362;
                        other.npc_flag = 1;
                        other.can_talk = false;
                        global.cutscene = false;
                    }
                }
            }
            else if (scene == 3)
            {
                scr_text();
                
                with (msg)
                {
                    if (message_current == 0 || message_current == 6)
                    {
                        other.is_talking = true;
                        obj_miner_receptionist.is_talking = false;
                    }
                    
                    if (message_current == 5)
                    {
                        other.is_talking = false;
                        obj_miner_receptionist.is_talking = true;
                    }
                    
                    message[0] = "* Someone isn't doing#  their job correctly?";
                    message[1] = "* Well I never!";
                    message[2] = "* They deserve a good#  slap on the wrist, that#  they do!";
                    message[3] = "* One more mistake and I#  might put them in the#  timeout corner!";
                    message[4] = "* I'll uh... send Angie#  down to confront them.";
                    prt[0] = 361;
                    prt[1] = 359;
                    prt[2] = 359;
                    prt[3] = 359;
                    prt[4] = 361;
                    message[5] = "* You won't fire them#  will you?";
                    prt[5] = 363;
                    message[6] = "* Of course not!";
                    message[7] = "* The only monster I ever#  fired was the health#  inspector.";
                    message[8] = "* Fired him before he#  arrived.";
                    prt[6] = 361;
                    prt[7] = 359;
                    prt[8] = 359;
                    
                    if (message_current == 8)
                    {
                        other.npc_flag = 1;
                        other.can_talk = false;
                        global.cutscene = false;
                    }
                }
            }
            
            break;
        
        case 1:
            is_talking = true;
            can_talk = false;
            scr_text();
            
            with (msg)
            {
                if (global.geno_complete[2] == false)
                {
                    sndfnt = 99;
                    message[0] = "* I take great pride in#  these mines.";
                    message[1] = "* Been supervising them#  for around thirty years!";
                    message[2] = "* Here every single day.";
                    message[3] = "* I did take a week off#  when my kiddo was born.";
                    message[4] = "* But was right back at#  it when the time came.";
                    message[5] = "* Strangely, the progress#  report for that week#  was above average.";
                    prt[0] = 361;
                    prt[1] = 359;
                    prt[2] = 359;
                    prt[3] = 359;
                    prt[4] = 361;
                    prt[5] = 361;
                }
                else
                {
                    message[0] = "* Haven't had an#  emergency like this#  since the old cave in.";
                    message[1] = "* Abandoned a good#  facility that day.";
                    prt[0] = 359;
                    prt[1] = 359;
                }
            }
            
            npc_flag++;
            break;
        
        case 2:
            is_talking = true;
            can_talk = false;
            scr_text();
            
            with (msg)
            {
                sndfnt = 99;
                
                if (global.geno_complete[2] == false)
                {
                    message[0] = "* If you ever see my kid# out there,";
                    message[1] = "* Tell 'em that their#  old man misses 'em!";
                    prt[0] = 359;
                    prt[1] = 362;
                }
                else
                {
                    message[0] = "* If you're leaving, stay#  safe out there.";
                    message[1] = "* But I wouldn't#  recommend roaming around#  right now.";
                    prt[0] = 359;
                    prt[1] = 359;
                }
            }
            
            break;
    }
}

if (can_talk == true && !instance_exists(obj_dialogue))
    can_talk = false;
