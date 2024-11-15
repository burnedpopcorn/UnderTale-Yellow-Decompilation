event_inherited();

if (obj_npc_salloon_card1.interact || obj_npc_salloon_card2.interact || obj_npc_salloon_card3.interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                talker[0] = -4;
                talker[1] = 35;
                message[0] = "* (Several monsters are enjoying#  a nice, fair game of#  poker.)";
                message[1] = "* ...How do I keep losing?";
                position = 1;
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                talker[0] = -4;
                talker[1] = 643;
                message[0] = "* (Things are heating up! It#  could be anyone's#  game!)";
                message[1] = "* Shucks, I might have to take#  out a loan if I wanna keep this#  up!";
                position = 1;
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                talker[0] = -4;
                talker[1] = 1738;
                message[0] = "* (Looks like we have a#  winner!)";
                message[1] = "* Well played and well payed,#  boys!";
                position = 1;
            }
            
            break;
    }
}
