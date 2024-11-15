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
                message[0] = "* North Star is the worst! Hate#  that guy.";
                message[1] = "* ...Right?";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Heh, I don't ACTUALLY think#  North Star sucks.";
                message[1] = "* I just say whatever's popular#  in hopes to rise in the Wild#  East ranks.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* I uh... I kinda need North#  Star to return asap.";
                message[1] = "* Who else am I supposed to#  blindly follow in life? My dad?";
                message[2] = "* Sure, if I wanna grill meat#  and browse sketchy Undernet#  pages all day.";
            }
            
            break;
    }
}
