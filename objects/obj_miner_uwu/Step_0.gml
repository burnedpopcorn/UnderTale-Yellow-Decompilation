var dialogue_type;

event_inherited();
dialogue_type = 1;

if (global.dunes_flag[4] >= 1)
    dialogue_type = 2;

if (global.dunes_flag[4] >= 2 || (npc_flag < 3 && scr_item_exists_check("Pickaxe")))
    npc_flag = 6;

if (dialogue_type == 1)
{
    if (interact)
    {
        scr_text();
        
        switch (npc_flag)
        {
            case 0:
                is_talking = 1;
                
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* Haven't seen you around the#  mines, friend!";
                    message[1] = "* Welcome to the greatest place#  in the Underground!";
                    message[2] = "* I love it here!";
                    message[3] = "* Everyone is so nice and works#  hard; we're a real family!";
                }
                
                npc_flag = 1;
                break;
            
            case 1:
                is_talking = 1;
                
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* I like these mines so much that#  I never leave!";
                    message[1] = "* Everyone tells me to go home#  but I find the cold, rocky#  floor very comfortable!";
                    message[2] = "* And no, they do not pay me for#  overtime!";
                }
                
                npc_flag = 2;
                break;
            
            case 2:
            case 6:
                is_talking = 0;
                
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* (Whistling)";
                }
                
                break;
        }
    }
}

if (dialogue_type == 2)
{
    if (interact)
    {
        scr_text();
        is_talking = 1;
        
        if (npc_flag <= 2)
        {
            scene = 1;
        }
        else if (npc_flag == 3)
        {
            with (msg)
            {
                message[0] = "* Don't worry about returning my#  pickaxe!";
                message[1] = "* I'll just mine with my hands!";
            }
        }
        else if (npc_flag == 4)
        {
            with (msg)
            {
                if (!scr_item("Pickaxe"))
                {
                    message[0] = "* Empty your some of your#  belongings and come back!";
                }
                else
                {
                    other.npc_flag = 3;
                    other.sprite_index = spr_miner_uwu;
                    message[0] = "* (Obtained Pickaxe!)";
                }
            }
        }
        else if (npc_flag == 5)
        {
            with (msg)
            {
                message[0] = "* There's gotta be another way#  you can fix the elevator!";
                other.npc_flag = 6;
            }
        }
        else if (npc_flag == 6)
        {
            is_talking = 0;
            
            with (msg)
                message[0] = "* (Whistling)";
        }
    }
    
    if (scene > 0)
    {
        switch (scene)
        {
            case 1:
                with (msg)
                {
                    message[0] = "* What can I do you for, friend?";
                    ch_msg = 0;
                    ch[1] = "Elevator";
                    ch[2] = "Nothing";
                    
                    if (outcome == 1)
                    {
                        message_reset = true;
                        other.scene++;
                    }
                    
                    if (outcome == 2)
                    {
                        message[1] = "* Holler if you need something!";
                        other.scene = 0;
                    }
                }
                
                break;
            
            case 2:
                with (msg)
                {
                    message[0] = "* Oh fiddlesticks!";
                    message[1] = "* I've seen a few pickles in my#  day and this is certainly one#  of them!";
                    message[2] = "* Tell you what, I'll give you my#  trusty pickaxe here, if you...";
                    message[3] = "* Win a monster trivia game!!";
                    message[4] = "* Oooh boy, this will be fun!";
                    message[5] = "* All you have to do is answer#  these three questions correctly!";
                    message[6] = "* You only get one try so do your#  best!";
                    message[7] = "* Question one!";
                    message[8] = "* Who is the current Royal#  Scientist?";
                    message[9] = "* Choose the correct name!";
                    ch_msg = 9;
                    ch[1] = "ASGORE";
                    ch[2] = "Alphys";
                    ch[3] = "Dr. Science";
                    
                    if (message_current == 3 && !audio_is_playing(mus_gemstone_fever))
                    {
                        audio_sound_gain(obj_radio.current_song, 0, 300);
                        audio_play_sound(mus_gemstone_fever, 1, 1);
                    }
                    
                    if (outcome == 2)
                    {
                        audio_play_sound(snd_success, 1, 0);
                        message_reset = true;
                        other.scene++;
                    }
                    else if (outcome != 0)
                    {
                        message_reset = true;
                        other.scene = 6;
                    }
                }
                
                break;
            
            case 3:
                with (msg)
                {
                    message[0] = "* Correct!";
                    message[1] = "* Question two!";
                    message[2] = "* What is most monster food made#  out of?";
                    message[3] = "* Only one answer is correct!";
                    ch_msg = 3;
                    ch[1] = "Magic";
                    ch[2] = "Ingredients";
                    ch[3] = "Snails";
                    
                    if (outcome == 1)
                    {
                        audio_play_sound(snd_success, 1, 0);
                        message_reset = true;
                        other.scene++;
                    }
                    else if (outcome != 0)
                    {
                        message_reset = true;
                        other.scene = 6;
                    }
                }
                
                break;
            
            case 4:
                with (msg)
                {
                    message[0] = "* Good job!";
                    message[1] = "* Final question!";
                    message[2] = "* How many more SOULs does ASGORE#  need to shatter the barrier?";
                    message[3] = "* Pick the number of SOULs!";
                    ch_msg = 3;
                    ch[1] = "1";
                    ch[2] = "2";
                    ch[3] = "3";
                    
                    if (outcome == 2)
                    {
                        audio_play_sound(snd_success, 1, 0);
                        message_reset = true;
                        other.scene++;
                    }
                    else if (outcome != 0)
                    {
                        message_reset = true;
                        other.scene = 6;
                    }
                }
                
                break;
            
            case 5:
                with (msg)
                {
                    message[0] = "* Congratulations!";
                    message[1] = "* You really know your stuff!";
                    message[2] = "* Here's my pick as promised!";
                    message[3] = "* (Obtained Pickaxe!)";
                    
                    if (message_current == 3 && !scr_item("Pickaxe"))
                    {
                        message[3] = "* Aww! Looks like my pick would#  only weigh you down.";
                        message[4] = "* Empty your some of your#  belongings and come back!";
                        other.npc_flag = 4;
                        other.scene = 0;
                        audio_sound_gain(obj_radio.current_song, 1, 600);
                        scr_audio_fade_out(186, 300);
                    }
                    else if (message_current == 3)
                    {
                        other.npc_flag = 3;
                        other.is_talking = false;
                        other.scene = 0;
                        other.sprite_index = spr_miner_uwu;
                        audio_sound_gain(obj_radio.current_song, 1, 600);
                        scr_audio_fade_out(186, 300);
                    }
                }
                
                break;
            
            case 6:
                with (msg)
                {
                    message[0] = "* I'm sorry, that was not correct!";
                    message[1] = "* I'm sure you tried your best,#  though!";
                }
                
                npc_flag = 5;
                scene = 0;
                audio_sound_gain(obj_radio.current_song, 1, 600);
                scr_audio_fade_out(186, 300);
                break;
        }
    }
}

if (is_talking)
{
    if (sprite_index == spr_miner_uwu)
        sprite_index = spr_miner_uwu_talk;
    
    if (sprite_index == spr_miner_uwu_pickaxe)
        sprite_index = spr_miner_uwu_pickaxe_talk;
    
    image_speed = 0.2;
}
else
{
    if (sprite_index == spr_miner_uwu_talk)
        sprite_index = spr_miner_uwu;
    
    if (sprite_index == spr_miner_uwu_pickaxe_talk)
        sprite_index = spr_miner_uwu_pickaxe;
    
    image_speed = 0;
}
