event_inherited();

if (interact && waiter == 0)
{
    waiter = 1;
    is_talking = true;
    scr_text();
}

if (waiter == 1)
{
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Wow. It's colder today than#  usual, huh?";
                message[1] = "* If I wasn't extremely lazy, I'd#  go to the Honeydew Resort and#  get some hot coffee.";
            }
            
            npc_flag = 1;
            waiter = 2;
            break;
        
        case 1:
            if (scr_item_exists_check("Hndw Coffee") == true)
            {
                with (msg)
                {
                    portrait = false;
                    sndfnt = sndfnt_default;
                    message[0] = "* (You take out the cup of#  coffee.)";
                    message[1] = "* For me? How can I ever thank#  you!";
                    message[2] = "* Here, I found this in the snow.#  It was probably out there for#  ages.";
                    message[3] = "* (You got a Soggy Mitten.)";
                    
                    if (message_current == 0)
                        other.is_talking = false;
                    else
                        other.is_talking = true;
                    
                    if (message_current == 3)
                    {
                        scr_item_remove("Hndw Coffee");
                        scr_item("Soggy Mitten");
                        other.is_talking = false;
                        other.npc_flag = 2;
                        other.waiter = 2;
                        other.sprite_index = spr_martha_coffee_snowdin_yellow;
                    }
                }
            }
            else
            {
                with (msg)
                {
                    portrait = false;
                    sndfnt = sndfnt_default;
                    message[0] = "* Wow. It's colder today than#  usual, huh?";
                    message[1] = "* If I wasn't extremely lazy, I'd#  go to the Honeydew Resort and#  get some hot coffee.";
                }
                
                waiter = 2;
            }
            
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* The coffee is a little hot.";
                message[1] = "* I'm going to let it cool down.#  I'm not crazy, ya know.";
                message[2] = "* In the meantime, I'll get to#  making a campfire so I don't#  freeze.";
            }
            
            npc_flag = 3;
            waiter = 2;
            break;
        
        case 3:
            if (scr_item_exists_check("Matches") == true)
            {
                with (msg)
                {
                    portrait = false;
                    sndfnt = sndfnt_default;
                    message[0] = "* (You take out the matches.)";
                    message[1] = "* Are those matches? Can I have#  them?";
                    ch_msg = 1;
                    ch[1] = "Yes";
                    ch[2] = "No";
                    
                    if (message_current == 0 || message_current == 6)
                        other.is_talking = false;
                    else
                        other.is_talking = true;
                    
                    if (outcome == 1)
                    {
                        message[2] = "* You're a lifesaver! I really#  need help with this fire!";
                        message[3] = "* I, uh... I don't really have#  anything else to give you.";
                        message[4] = "* Here, take your coffee back, I#  guess.";
                        message[5] = "* It got cold while I was working#  anyway.";
                        message[6] = "* (You got a cup of lukewarm#  coffee.)";
                    }
                    
                    if (message_current == 6)
                    {
                        other.sprite_index = spr_martha_snowdin_yellow;
                        scr_item_remove("Matches");
                        scr_item("Lukewarm Coffee");
                        other.npc_flag = 4;
                        other.is_talking = false;
                        other.waiter = 2;
                    }
                    
                    if (outcome == 2)
                    {
                        message[2] = "* Awww... I really thought they#  were matches...";
                        other.waiter = 2;
                    }
                }
            }
            else
            {
                with (msg)
                {
                    portrait = false;
                    sndfnt = sndfnt_default;
                    message[0] = "* The coffee is a little hot.";
                    message[1] = "* I'm going to let it cool down.#  I'm not crazy, ya know.";
                    message[2] = "* In the meantime, I'll get to#  making a campfire so I don't#  freeze.";
                    other.waiter = 2;
                }
            }
            
            break;
        
        case 4:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Why am I still standing here,#  idle?";
                message[1] = "* I've frozen. I cannot move my#  body anymore.";
                message[2] = "* Don't worry, this is nature's#  way of letting me be lazy.";
            }
            
            waiter = 2;
            break;
    }
}

if (waiter == 2 && !instance_exists(obj_dialogue))
{
    waiter = 0;
    is_talking = false;
}
