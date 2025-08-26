event_inherited();

if (interact == true)
    interact_hold = true;

var gold_missing_check = false;

if (interact_hold == true)
{
    switch (npc_flag)
    {
        case 0:
            if (scene == 0)
            {
                scr_cutscene_start();
                scr_text();
                
                with (msg)
                {
                    ch_msg = 4;
                    ch[1] = "Uh...";
                    ch[2] = "Hurt";
                    talker[0] = other.object_index;
                    message[0] = "* Welcome to the Wild East#  Clinic!";
                    message[1] = "* We put the \"hospital\" in#  hospitality!";
                    message[2] = "* They call me The Doc!";
                    message[3] = "* Are you sick? Hurt? ";
                    message[4] = "* What is your diagnosis?";
                    
                    if (outcome == 1)
                        message[5] = "* Ah, a shy one! No problem!";
                    
                    if (outcome == 2)
                    {
                        message[5] = "* Yes of course!";
                        message[6] = "* We have a tough one!";
                    }
                }
                
                if (!global.dialogue_open)
                    scene++;
            }
            else if (scene == 1)
            {
                scr_text();
                
                with (msg)
                {
                    ch_msg = 3;
                    ch[1] = "Deal";
                    ch[2] = "No thanks";
                    talker[0] = other.object_index;
                    message[0] = "* I have just the boost you need!";
                    message[1] = "* For an upfront price of 30G I#  can OVERCHARGE your health!";
                    message[2] = "* It is an... experimental#  medicine but who said#  I was qualified?";
                    message[3] = "* What do you say?";
                    
                    if (outcome == 1)
                    {
                        if (global.player_gold < 30)
                        {
                            gold_missing_check = true;
                            other.interact_hold = false;
                            other.npc_flag += 1;
                            other.scene = 0;
                            global.dialogue_open = false;
                            instance_destroy();
                        }
                        
                        message[4] = "* Come closer and I'll begin the#  procedure!";
                    }
                    
                    if (outcome == 2)
                    {
                        message[4] = "* Sorry to hear that!";
                        message[5] = "* I'll always be here if you need#  anything!";
                        other.interact_hold = false;
                        other.npc_flag += 1;
                        other.scene = 0;
                        global.cutscene = false;
                    }
                }
                
                if (!global.dialogue_open)
                    scene++;
            }
            else if (scene == 2)
            {
                scr_text();
                
                with (msg)
                {
                    talker[0] = other.object_index;
                    message[0] = "* Mhm, I see.";
                    message[1] = "* Little bit of this...";
                    message[2] = "* Aaaand done!";
                    message[3] = "* (You gained +15 extra HP!)";
                    message[4] = "* When the energy wears off, it's#  gone for good!";
                    message[5] = "* You can always visit me again#  for more but only one at a time!";
                    message[6] = "* I might take risks but I'm not#  crazy! Ha ha... Ahem.";
                    
                    if (message_current == 3 && global.current_hp_self <= global.max_hp_self)
                    {
                        audio_play_sound(snd_success, 1, 0);
                        global.max_hp_boosted = global.max_hp_self + 15;
                        global.current_hp_self = global.max_hp_boosted;
                        global.player_gold -= 30;
                    }
                }
                
                if (!global.dialogue_open)
                {
                    scene = 0;
                    npc_flag += 1;
                    interact_hold = false;
                    scr_cutscene_end();
                }
            }
            
            break;
        
        case 1:
            if (global.current_hp_self > global.max_hp_self)
            {
                scr_text();
                
                with (msg)
                {
                    talker[0] = other.object_index;
                    message[0] = "* Your overcharge needs to#  deplete before I can do another#  procedure!";
                }
                
                interact_hold = false;
            }
            else
            {
                scr_text();
                
                with (msg)
                {
                    ch_msg = 1;
                    ch[1] = "Yes";
                    ch[2] = "No thanks";
                    talker[0] = other.object_index;
                    message[0] = "* Hello again!";
                    message[1] = "* Need a boost?";
                    
                    if (outcome == 1)
                    {
                        if (global.player_gold < 30)
                        {
                            gold_missing_check = true;
                            other.interact_hold = false;
                            instance_destroy();
                        }
                        
                        message[2] = "* Alright! Let's begin!";
                        message[3] = "* Little bit of this...";
                        message[4] = "* Aaaand done!";
                        message[5] = "* (You gained +15 extra HP!)";
                        message[6] = "* Thank you! Come again soon!";
                    }
                    
                    if (message_current == 5 && global.current_hp_self <= global.max_hp_self)
                    {
                        audio_play_sound(snd_success, 1, 0);
                        global.current_hp_self = global.max_hp_self + 15;
                        global.player_gold -= 30;
                        other.interact_hold = false;
                    }
                    
                    if (outcome == 2)
                    {
                        message[2] = "* Sorry to hear that!";
                        message[3] = "* I'll always be here if you need#  anything!";
                    }
                }
                
                if (!global.dialogue_open)
                    interact_hold = false;
            }
            
            break;
    }
}

if (gold_missing_check == true)
{
    global.cutscene = false;
    scr_text();
    
    with (msg)
    {
        talker[0] = other.object_index;
        message[0] = "* I'm going to need the exact#  payment, sorry!";
        message[1] = "* Gotta keep the doors open#  somehow!";
    }
}
