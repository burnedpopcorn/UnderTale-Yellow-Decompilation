event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Say, another explorer in this#  neck of the caves?";
                message[1] = "* Pleased to meet ya!";
                message[2] = "* You wouldn't be in the#  stone-moving business, would#  you?";
                message[3] = "* Ha! Only kidding around!";
                message[4] = "* This morning, I set out on an#  expedition to find new wares#  for my shop.";
                message[5] = "* Right as I passed through that#  door there, it caved in!";
                message[6] = "* Close one, huh?";
                message[7] = "* Sorry universe, but you won't#  do me in that easily!";
                message[8] = "* Wa ha ha!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            waiter = 1;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* If you're ever in Waterfall,#  be sure to stop by my shop!";
                message[1] = "* Got plenty o'wares to sell ya!";
                message[2] = "* No better place your allowance#  could go!";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Oh, do you want me to say my#  catchphrase as a farewell?";
                message[1] = "* Alright then! Ready?";
                message[2] = "* Let justice prevail!!!";
                message[3] = "* ...";
                message[4] = "* Or was it \"Let justice be#  done\"?";
                message[5] = "* Could've also been \"Here comes#  the hammer.\"";
                message[6] = "* ...";
                message[7] = "* What can I say? I never could#  decide on my catchphrase!";
                message[8] = "* Wa ha ha!";
            }
            
            npc_flag = 4;
            break;
        
        case 4:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Be careful out there, kid!";
            }
            
            break;
    }
}

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = sndfnt_default;
        message[0] = "* What's a young'n like you#  doing out here anyway?";
        message[1] = "* Surely it wasn't to meet ol'#  Gerson, was it?";
        message[2] = "* To hear one of my famous#  stories?";
        message[3] = "* Surely not!";
        ch_msg = 3;
        ch[1] = "Stories?";
        ch[2] = "I should\ngo";
        
        if (outcome == 1)
        {
            message[4] = "* Yes! I have many great stories#  of the old days.";
            message[5] = "* Though, at this point, they're#  more like legends!";
            message[6] = "* You see, I used to be a hero.#  The Hammer of Justice!";
            message[7] = "* I'd go ‘round, day and night,#  walloping any bad guys that#  needed walloping.";
            message[8] = "* This one time, I-";
            message[9] = "* I... er...";
            message[10] = "* I just forgot all of my#  stories.";
            message[11] = "* Wa ha ha!!";
            other.npc_flag = 2;
            other.waiter = 0;
        }
        
        if (outcome == 2)
        {
            message[4] = "* Hey, I would too if I could,#  wa ha ha!";
            message[5] = "* If my memory serves, and it#  usually doesn't, Mining Co. is#  stationed around here.";
            message[6] = "* They could clear this cave in#  a jiff!";
            message[7] = "* Eh, well... the geology here#  IS interesting.";
            message[8] = "* Maybe I'll stay a while, ya#  know?";
            message[9] = "* Take my situation as a#  blessing in disguise!";
            other.npc_flag = 2;
            other.waiter = 0;
        }
    }
}
