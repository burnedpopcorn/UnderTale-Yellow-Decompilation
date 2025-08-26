event_inherited();

if (global.sworks_flag[31] == 1 || global.sworks_flag[31] == 2)
{
    if (npc_flag < 5)
        npc_flag = 5;
}

if (interact && waiter == 0)
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                ch_msg = 2;
                ch[1] = "Correct";
                ch[2] = "No, I am";
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Oh my! You startled me!";
                message[1] = "* I know my eyes aren't what they#  used to be but...";
                message[2] = "* ...You aren't a machine,#  correct?";
                
                if (outcome == 1)
                {
                    message[3] = "* I can't believe it. Another#  monster in the Steamworks? ";
                    message[4] = "* Thought I was the only one.";
                    message[5] = "* I'm not incredibly social but#  you're welcome to rest up here.";
                    other.npc_flag = 1;
                    other.waiter = 0;
                }
                
                if (outcome == 2)
                {
                    message[3] = "* Hm? You look nothing like the#  others.";
                    message[4] = "* Don't pull my leg now. At my#  age, it might break off.";
                    other.npc_flag = 1;
                    other.waiter = 0;
                }
            }
            
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* This facility used to be the#  epicenter for innovation back#  in the day.";
                message[1] = "* In my prime I was a chemist.#  A pretty good one too.";
                message[2] = "* That is... until they let#  everyone go.";
                message[3] = "* Said there were too many cooks#  in the kitchen, wanted to focus#  in.";
                message[4] = "* Couldn't let my passion go that#  easily so I hid away when they#  locked up. ";
                message[5] = "* Now I have the freedom to#  experiment whenever and however#  I please.";
                message[6] = "* Though... no one is around to#  witness my efforts.";
            }
            
            npc_flag = 2;
            waiter = 0;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Personally, I blame the#  shutdown on the robotics#  project, unruly things.";
                message[1] = "* I thought I was rid of their#  antics until an hour or so ago.";
                message[2] = "* The facility powered up and#  they all began to roam like#  zombies back from the dead.";
                message[3] = "* I hid here in the meantime.#  Those heaps of metal are mighty#  unpredictable.";
            }
            
            npc_flag = 3;
            waiter = 0;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* I'm guessing it was you, right?#  The one who turned the#  generator back on?";
                message[1] = "* I must thank you, it isn't#  ideal to live in the dark.";
                message[2] = "* Many times I have attempted the#  journey but the obstacles are#  far too numerous.";
                message[3] = "* No need to worry, though. Life#  has been just fine.";
                message[4] = "* Aside from the reserves left#  behind, those white plants are#  quite edible.";
                message[5] = "* Couldn't run out of food if I#  wanted to.";
            }
            
            npc_flag = 4;
            waiter = 0;
            break;
        
        case 4:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* On your way out, feel free to#  use any equipment you like.";
                message[1] = "* While I prefer working alone...";
                message[2] = "* ...I can't deny that science#  is best accomplished as a#  collaborative effort.";
                message[3] = "* I'm going to wait here until#  the robots disperse but I wish#  you luck on your travels!";
            }
            
            waiter = 0;
            break;
        
        case 5:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* What a day, what a day.";
                message[1] = "* It seems those wily bots have#  finally calmed themselves.";
                message[2] = "* Thank goodness too, my hideout#  was getting awfully cramped!";
            }
            
            waiter = 0;
            npc_flag = 6;
            break;
        
        case 6:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Since the power was turned on,#  all of the equipment functions#  again!";
                message[1] = "* That means I'm free to conduct#  experiments without#  limitations!";
                message[2] = "* It has been some time since I#  operated that computer over#  there.";
                message[3] = "* I had forgotten that they#  programmed a game into the#  mixing process.";
                message[4] = "* Was that really necessary?";
                message[5] = "* My ancient eyes can barely#  keep up!";
            }
            
            waiter = 0;
            npc_flag = 7;
            break;
        
        case 7:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* I apologize for cutting our#  talk short but there is so much#  to do now.";
                message[1] = "* You'll just have to wait until#  after the tests.";
            }
            
            waiter = 0;
            break;
    }
}
