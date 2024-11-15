if (sprite_index == spr_smokey_smoke)
{
    image_speed = 0.4;
    
    if (image_index >= (image_number - image_speed))
    {
        sprite_index = spr_smokey;
        scr_cutscene_end();
        audio_sound_gain(obj_radio.bgm, 1, 300);
    }
    
    exit;
}

event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    waiter = 1;
}

if (waiter == 1)
{
    if (global.dunes_flag[6] == false)
    {
        switch (npc_flag)
        {
            case 0:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* Hey, just in time!";
                    message[1] = "* I'm sure you noticed all this#  mining mumbo jumbo lying around,#  yea?";
                    message[2] = "* Well, Corporate said we have to#  solve puzzles as we work to#  exercise the ol' noggin.";
                    message[3] = "* They even made the Foreman lock#  the door until work's done.";
                    message[4] = "* Pretty unnecessary if you ask#  me.";
                    message[5] = "* Seeing as I'm on my permanent#  smoke break, could you solve it#  for me?";
                    message[6] = "* You look like a smart kid. Give#  it a shot.";
                }
                
                if (!global.dialogue_open)
                {
                    npc_flag = 1;
                    waiter = 0;
                }
                
                break;
            
            case 1:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* What do ya need?";
                    ch_msg = 0;
                    ch[1] = "Can you help me?";
                }
                
                if (!global.dialogue_open)
                {
                    scr_cutscene_start();
                    audio_sound_gain(obj_radio.bgm, 0, 300);
                    sprite_index = spr_smokey_smoke;
                    audio_play_sound(snd_smoke, 1, 0);
                    waiter = 0;
                    npc_flag = 2;
                }
                
                break;
            
            case 2:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* You're not gonna solve the#  puzzle by talking to me.";
                    message[1] = "* Kids these days are so#  lazy, I swear.";
                }
                
                break;
        }
    }
    else
    {
        if (npc_flag < 3)
            npc_flag = 3;
        
        switch (npc_flag)
        {
            case 3:
                with (msg)
                {
                    message[0] = "* Great job! I knew you could do#  it, kid!";
                    message[1] = "* Won't be another job until#  tomorrow.";
                    message[2] = "* I can spend the rest of my#  workday doing absolutely#  nothing.";
                    message[3] = "* Oh wait, I already was.";
                }
                
                if (!global.dialogue_open)
                {
                    npc_flag = 4;
                    waiter = 0;
                }
                
                break;
            
            case 4:
                with (msg)
                {
                    message[0] = "* You gotta wonder when ol'#  ASGORE is gonna call off this#  excavation.";
                    message[1] = "* Mining Co. has been in business#  for decades!";
                }
                
                if (!global.dialogue_open)
                {
                    npc_flag = 2;
                    waiter = 0;
                }
                
                break;
        }
    }
}
