event_inherited();
depth = depth_start;

if (interact && npc_flag != 1)
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        if (global.hotland_flag[1] > 0 && global.party_member != -4)
        {
            if (global.hotland_flag[7] == 0)
            {
                is_talking = 0;
                message[0] = "* Oh, hey!";
                message[1] = "* The elevator to New Home seems#  to be free at the moment.";
                message[2] = "* I'd use this opportunity to#  chase after the two friends you#  were looking for.";
                message[3] = "* That's the plan. Thank#  you.";
                message[4] = "* And please tell them not to be#  so reckless in my#  establishment.";
                message[5] = "* Stresses out the residents.";
                prt[3] = spr_martlet_head_content;
                talker[0] = obj_npc_handlord;
                talker[3] = -4;
                talker[4] = obj_npc_handlord;
                sndfnt_array[0] = sndfnt_default;
                sndfnt_array[3] = snd_talk_martlet;
                sndfnt_array[4] = sndfnt_default;
                global.hotland_flag[7] += 1;
            }
            else
            {
                message[0] = "* If you don't mind, the complex#  is quite busy today.";
                message[1] = "* I need to attend to other#  guests.";
            }
            
            other.waiter = 0;
        }
        else
        {
            switch (other.npc_flag)
            {
                case 0:
                    message[0] = "* Hello and welcome to UG#  Apartments!";
                    message[1] = "* - The leading establishment#  where your stay is temporary#  AND unaffordable!";
                    message[2] = "* I am the Handlord of this#  complex.";
                    message[3] = "* Please do not say you \"find it#  quite simple.\" You will be#  kicked out.";
                    message[4] = "* How may I be of service?";
                    ch_msg = 4;
                    ch[1] = "Castle";
                    ch[2] = "Room";
                    
                    if (outcome == 1)
                    {
                        message[5] = "* Of course!";
                        message[6] = "* To reach New Home, you'll want#  to take that elevator on my#  left.";
                        message[7] = "* Not left as in my appearance,#  left as in the direction. You#  get it.";
                        message[8] = "* Ahem...";
                        message[9] = "* Of course, with the CORE being#  under maintenance, it is the#  only way to reach the city.";
                        message[10] = "* Heavy traffic is expected.";
                        other.waiter = 0;
                        other.npc_flag++;
                    }
                    
                    if (outcome == 2)
                    {
                        message[5] = "* Let me check if we have any#  openings...";
                        message[6] = "* ...Yes, here we are.";
                        message[7] = "* We have a Platinum Deluxe#  apartment on the top floor.";
                        message[8] = "* Though the down payment will#  cost you about... 6500G";
                        message[9] = "* Wait, you aren't even old#  enough to rent a room. ";
                        message[10] = "* Bring a parent or guardian next#  time.";
                        other.waiter = 0;
                        other.npc_flag++;
                    }
                    
                    break;
                
                case 2:
                    message[0] = "* If you don't mind, the complex#  is quite busy today.";
                    message[1] = "* I need to attend to other#  guests.";
                    other.waiter = 0;
                    break;
            }
        }
    }
}

if (npc_flag == 1 && point_distance(obj_pl.x, obj_pl.y, x, y) > 75)
{
    scr_text();
    is_talking = 1;
    npc_flag += 1;
    
    with (msg)
    {
        message[0] = "* Oh! Hold on a second!";
        message[1] = "* I think I recognize you...";
        message[2] = "* Yeah, it's the hat!";
        message[3] = "* A blue, feathered monster came#  in here and asked if I would#  tell you to go to the roof.";
        message[4] = "* She wanted to \"meet you on the#  roof\" is what she said exactly.";
        message[5] = "* All I ask is please do not do#  anything illegal on the#  premises.";
    }
    
    waiter = 0;
}
