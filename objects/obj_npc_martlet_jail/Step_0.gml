var actor_martlet;

event_inherited();

if (live_call())
    return global.live_result;

actor_martlet = object_index;

if (global.dunes_flag_ext[4] == 0)
{
    switch (scene)
    {
        case 0:
            if (obj_pl.x > 160)
                cutscene_advance();
            
            break;
        
        case 1:
            scr_cutscene_start();
            cutscene_npc_direction(actor_martlet, "left");
            break;
        
        case 2:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* Clover!";
                message[1] = "* I knew I could count on#  you!";
                message[2] = "* So, me getting out of#  here...";
                message[3] = "* Any luck?";
                prt[0] = 333;
                prt[1] = 318;
                prt[2] = 320;
                prt[3] = 320;
                ch_msg = 3;
                ch[1] = "Soon";
                ch[2] = "No, sorry";
                
                if (outcome == 1)
                {
                    message[4] = "* Let's hope!";
                    message[5] = "* Thanks for being#  positive. This is super#  ridiculous.";
                    message[6] = "* Anyway...";
                    prt[4] = 317;
                    prt[5] = 320;
                    prt[6] = 321;
                }
                
                if (outcome == 2)
                {
                    message[4] = "* It's OK. I knew it would#  be difficult.";
                    message[5] = "* This is infuriating.";
                    message[6] = "* Anyway...";
                    prt[4] = 317;
                    prt[5] = 315;
                    prt[6] = 321;
                }
            }
            
            break;
        
        case 3:
            cutscene_npc_direction(actor_martlet, "down");
            global.dunes_flag_ext[4] += 1;
            interact = true;
            waiter = 1;
            scene = 0;
            break;
    }
}
else if (scene > 0)
{
    switch (scene)
    {
        case 1:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* I've been wondering how#  this situation will#  affect my job.";
                message[1] = "* Oh, that's right! I#  still have my handbook!";
                prt[0] = 317;
                prt[1] = 333;
            }
            
            break;
        
        case 2:
            cutscene_npc_action_sprite(object_index, 874, 0.3, true, 0);
            break;
        
        case 3:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* Let's see here...";
                message[1] = "* \"In case of injury,#  illness, imprisonment,#  loss of this handbook...";
                message[2] = "* Or another misfortune#  rendering you unable to#  perform your duties...";
                message[3] = "* Please report to the#  leader of the Royal#  Guard immediately.";
                message[4] = "* Failure to do so...\"";
                message[5] = "* ...";
                message[6] = "* Oh...";
                prt[0] = 334;
                prt[1] = 324;
                prt[2] = 324;
                prt[3] = 323;
                prt[4] = 330;
                prt[5] = 330;
                prt[6] = 332;
            }
            
            break;
        
        case 4:
            cutscene_npc_action_sprite_reverse(object_index, 874, 0.3, false);
            break;
        
        case 5:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* Let's just say the#  book wasn't very#  helpful.";
                prt[0] = 323;
            }
            
            break;
        
        case 6:
            martlet_second_cutscene = false;
            npc_flag = 6;
            scene = 0;
            scr_cutscene_end();
            break;
    }
}

if (interact && waiter == 0)
    waiter = 1;

if (waiter == 1)
{
    if (global.dunes_flag[20] == 1)
    {
        if (npc_flag == 0)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* That \"sheriff\" North#  Star? Was it?";
                message[1] = "* What a jerk!";
                message[2] = "* I tried to fight for#  you, I really did.";
                message[3] = "* His hooligans were too#  strong and tossed me in#  here.";
                message[4] = "* Knowing that, I don't#  think force will do much#  good.";
                message[5] = "* There's gotta be a#  level-headed monster#  around here.";
                message[6] = "* One that knows this is#  unjust and will free me.";
                message[7] = "* When that time comes#  I'll...";
                message[8] = "* Who am I kidding? I#  couldn't press charges#  or ANYTHING!";
                message[9] = "* I talk big but we're#  cornered.";
                message[10] = "* ASGORE or another guard#  finding out about you#  would be the end.";
                message[11] = "* Sigh...";
                message[12] = "* Well, North Star seems#  pretty enthusiastic#  about all of this.";
                message[13] = "* Maybe by playing along,#  you can gain his favor#  and set me free!";
                message[14] = "* I don't know... just#  play it cool for now. ";
                message[15] = "* I'll be here... ";
                message[16] = "* Ugh. What a day.";
                prt[0] = 308;
                prt[1] = 308;
                prt[2] = 317;
                prt[3] = 329;
                prt[4] = 317;
                prt[5] = 317;
                prt[6] = 321;
                prt[7] = 309;
                prt[8] = 329;
                prt[9] = 317;
                prt[10] = 317;
                prt[11] = 329;
                prt[12] = 338;
                prt[13] = 321;
                prt[14] = 338;
                prt[15] = 321;
                prt[16] = 336;
            }
            
            npc_flag = 1;
        }
        else if (npc_flag == 1)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* We'll make it through#  this, Clover. I know it!";
                prt[0] = 320;
            }
        }
    }
    
    if (global.dunes_flag[20] == 3)
    {
        if (npc_flag < 2)
            npc_flag = 2;
        
        if (npc_flag == 2)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* It's so boring in here.";
                message[1] = "* Could they at least give#  me something to do?";
                message[2] = "* All I have is#  brainstorming puzzle#  ideas in my head.";
                message[3] = "* I recently had an idea#  for a third molten rock#  puzzle, so that's fun!";
                message[4] = "* ...Okay, it isn't fun.";
                message[5] = "* What is interesting is#  the noise I heard a#  little while ago.";
                message[6] = "* I heard a loud SNAP! -#  Which awoke me from a#  nap.";
                message[7] = "* Before I realized what#  had happened, the other#  prisoner was gone.";
                message[8] = "* I tried to talk to them#  when I first arrived but#  got no answers.";
                message[9] = "* So now not only am I in#  jail, I have no cellmate#  to talk to.";
                message[10] = "* All in all, this day is#  going fantastic for me.";
                prt[0] = 336;
                prt[1] = 338;
                prt[2] = 336;
                prt[3] = 318;
                prt[4] = 317;
                prt[5] = 321;
                prt[6] = 324;
                prt[7] = 321;
                prt[8] = 321;
                prt[9] = 329;
                prt[10] = 336;
            }
            
            npc_flag = 3;
        }
        else if (npc_flag == 3)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* (By the way, I'm aware#  of this \"Moray\"#  character.)";
                message[1] = "* (So far they seem nice,#  so I'm gonna roll with#  it.)";
                message[2] = "* Ahem! No thanks, Clover,#  I have food!";
                message[3] = "* ...";
                prt[0] = 321;
                prt[1] = 328;
                prt[2] = 312;
                prt[3] = 337;
            }
            
            npc_flag = 4;
        }
        else if (npc_flag == 4)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* Give me enough time and#  I'll think of a fourth#  molten rock puzzle!";
                message[1] = "* At this rate, half of#  Snowdin will be molten#  rock puzzles!";
                prt[0] = 313;
                prt[1] = 313;
            }
        }
    }
    
    if (global.dunes_flag[20] == 5)
    {
        if (npc_flag < 5)
            npc_flag = 5;
        
        if (npc_flag == 5)
        {
            scr_cutscene_start();
            scene = 1;
        }
        else if (npc_flag == 6)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* On the bright side,";
                message[1] = "* I now have some#  not-so-light reading#  material!";
                message[2] = "* Gotta get cracking!";
                prt[0] = 328;
                prt[1] = 312;
                prt[2] = 328;
            }
            
            npc_flag = 7;
        }
        else if (npc_flag == 7)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* Keep at it, Clover,#  cause I'm not going#  anywhere.";
                prt[0] = 317;
            }
        }
    }
    
    if (global.dunes_flag[20] == 7)
    {
        if (npc_flag < 8)
            npc_flag = 8;
        
        if (npc_flag == 8)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* I managed to doze off#  for a moment earlier.";
                message[1] = "* I had a dream I was back#  at my Snowdin post! ";
                message[2] = "* ...Dozing off.";
                message[3] = "* Don't get me wrong, I'm#  not a lazy bird!";
                message[4] = "* Being a Royal Guard is#  no easy task!";
                message[5] = "* Calibrating puzzles,#  writing status reports,#  guarding outposts...";
                message[6] = "* Getting yelled at by an#  old lady for ruining the#  Snowdin bridge...";
                message[7] = "* Whoops, I'm trailing off#  again.";
                message[8] = "* I really need to get out#  soon, at this rate I'll#  start talking to myself.";
                message[9] = "* ...";
                message[10] = "* More than usual, anyway.";
                prt[0] = 321;
                prt[1] = 318;
                prt[2] = 320;
                prt[3] = 333;
                prt[4] = 322;
                prt[5] = 338;
                prt[6] = 323;
                prt[7] = 333;
                prt[8] = 336;
                prt[9] = 338;
                prt[10] = 320;
            }
            
            npc_flag = 9;
        }
        else if (npc_flag == 9)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* You've gotta hurry#  Clover, please!";
                message[1] = "* At this rate, I'm gonna#  have to start eating#  moss off the walls!";
                prt[0] = 329;
                prt[1] = 322;
            }
        }
    }
    
    if (global.dunes_flag[20] == 9)
    {
        if (npc_flag < 10)
            npc_flag = 10;
        
        if (npc_flag == 10)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* I kinda... Overheard#  what happened#  outside...";
                message[1] = "* Ugh. I know I shouldn't#  feel this way but...";
                message[2] = "* Maybe you should go#  after the sheriff,#  Clover.";
                message[3] = "* I know he did some mean#  stuff, but he's out#  there all alone now.";
                message[4] = "* You've gained his trust#  so maybe you could sort#  out the situation?";
                message[5] = "* ...";
                message[6] = "* And uh... We still#  need him to let me out#  of here... of course...";
                prt[0] = 322;
                prt[1] = 329;
                prt[2] = 329;
                prt[3] = 317;
                prt[4] = 320;
                prt[5] = 329;
                prt[6] = 320;
            }
            
            npc_flag = 11;
        }
        else if (npc_flag == 11)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_martlet;
                message[0] = "* You can do this Clover!";
                message[1] = "* If you could convince#  this bird-brain, you can#  get through to him!";
                prt[0] = 313;
                prt[1] = 313;
            }
        }
    }
    
    waiter = 2;
}

if (waiter == 2 && !instance_exists(obj_dialogue) && scene == 0)
{
    waiter = 0;
    global.cutscene = false;
}

if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag);
