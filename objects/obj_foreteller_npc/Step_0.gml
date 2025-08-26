event_inherited();

if (interact)
    can_talk = true;

if (can_talk == true)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        dialogue_is_minishop = true;
        portrait = false;
        sndfnt = sndfnt_default;
        
        if (other.npc_flag == 0)
        {
            message[0] = "* Hello, traveler!";
            message[1] = "* Would you be interested in#  having your fortune told?";
            message[2] = "* Only 5G per fortune!";
            message[3] = "* Now, you may be thinking that#  price is a little low.";
            message[4] = "* What quality fortune from an#  experienced fortune teller#  costs 5G?";
            message[5] = "* Well, your suspicions would be#  correct!";
            message[6] = "* See, I'm a fortune teller in#  training, so I'm selling tiny#  fortunes!";
            message[7] = "* Practice, you see.";
            message[8] = "* So, can I interest you in a#  bite-sized fortune?";
            ch_msg = 8;
        }
        else if (other.npc_flag <= 5)
        {
            message[0] = "* Tiny fortunes, still only 5G!";
            message[1] = "* Would you like one?";
            ch_msg = 1;
        }
        else if (other.npc_flag == 6)
        {
            message[0] = "* Oh, I am sorry but I cannot#  give anymore fortunes now.";
            message[1] = "* As part of my training, I can#  only see the future four times#  a day.";
            message[2] = "* You may come back tomorrow!";
            other.can_talk = false;
            other.npc_flag++;
        }
        else if (other.npc_flag == 7)
        {
            message[0] = "* Is it tomorrow already?";
            message[1] = "* I am never sure.";
            message[2] = "* It is hard to tell when you#  cannot see the sun go down.";
            message[3] = "* I do not think it is tomorrow#  yet, so I will assume it is not.";
            other.can_talk = false;
        }
        
        ch[1] = "Sure";
        ch[2] = "Nope";
        
        if (outcome == 1)
        {
            if (global.player_gold >= 5)
            {
                message[message_current + 1] = "* Let us see what the world has#  in store for you...";
                global.cutscene = true;
                global.player_gold -= 5;
                
                if (other.npc_flag == 0)
                    other.npc_flag++;
                
                other.fortune_ready = true;
                other.npc_flag++;
                audio_sound_gain(obj_oasis_indoors_dynamic_music.dynamic_mus, 0, 300);
            }
            else
            {
                message[message_current + 1] = "* (Not enough G)";
            }
            
            other.can_talk = false;
        }
        
        if (outcome == 2)
        {
            message[message_current + 1] = "* If you change your mind, I'll#  be here.";
            message[message_current + 2] = "* Otherwise, I may never get#  better.";
            other.can_talk = false;
            
            if (other.npc_flag == 0)
                other.npc_flag += 1;
        }
    }
}

if (fortune_ready == true && !global.dialogue_open)
{
    alarm[0] = 45;
    fortune_ready = false;
}

if (fortune == true)
{
    scr_text();
    is_talking = true;
    
    switch (npc_flag)
    {
        case 2:
            with (msg)
            {
                message[0] = "* Hmmmm-Oh dear!";
                message[1] = "* The future seems to indicate#  you're in for a tumble!";
                message[2] = "* Oh nonono, it looks like a big#  one too!";
                message[3] = "* It will happen very soon!";
                message[4] = "* Hang on...";
                message[5] = "* Oh... tumbleWEED.";
                message[6] = "* I guess I got a little excited#  and missed that second part.";
                message[7] = "* Sorry for the scare, looks like#  everything is fine after all.";
            }
            
            break;
        
        case 3:
            with (msg)
            {
                var cur_hour = current_hour;
                var cur_minute = current_minute + 2;
                
                if (cur_minute >= 60)
                {
                    cur_minute = cur_minute - 60;
                    cur_hour += 1;
                }
                
                message[0] = "* Hmmmm... ah yes, here we go!";
                message[1] = "* A very specific reading too,#  these are rare!";
                message[2] = "* In approximately two minutes...";
                message[3] = "* It will be " + string(cur_hour) + ":" + string(cur_minute) + "!";
                message[4] = "* Well, I hope that knowledge is#  helpful!";
            }
            
            break;
        
        case 4:
            with (msg)
            {
                message[0] = "* Hmmmm-Gah!";
                message[1] = "* I have never seen a fortune#  this dark before!";
                message[2] = "* I-I, are you sure you want to#  hear it?";
                message[3] = "* Wha-what am I saying? You have#  a right to hear it!";
                message[4] = "* Umm... hold on let me steel#  myself first.";
                message[5] = "* Okay.";
                message[6] = "* I see death in your future.";
                message[7] = "* Uh-but do not worry too much!#  There is no time given and,#  well, everyone dies eventually!";
                message[8] = "* Maybe I am seeing a hundred#  years from now-or two-hundred!#  That is even better!";
            }
            
            break;
        
        case 5:
            with (msg)
            {
                message[0] = "* Hmmm... Oh! I got something!";
                message[1] = "* Oh goodie, it is you!";
                message[2] = "* I see you and-oh this is#  exciting-you are walking!";
                message[3] = "* Walking past a big, clear water#  cooler in...";
                message[4] = "* Oh wait, hold on. You don't#  wear stripes do you?";
                message[5] = "* That doesn't look like you at#  all.";
                message[6] = "* Sorry, no charge on that one,#  cause it wasn't about you.";
            }
            
            global.player_gold += 5;
            npc_flag++;
            break;
    }
    
    if (!global.dialogue_open)
    {
        audio_sound_gain(obj_oasis_indoors_dynamic_music.dynamic_mus, 1, 300);
        sprite_index = spr_fortune_teller;
        global.cutscene = false;
        fortune = false;
    }
}

depth = y;
