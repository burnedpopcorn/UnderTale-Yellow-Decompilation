event_inherited();

if (interact == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* O-Oh... Hello.";
                message[1] = "* Please don't mind me.";
                message[2] = "* I was only tending to this#  little fella.";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* You wanna talk more?";
                message[1] = "* Uh... h-how about that#  weather?";
                message[2] = "* Sure is hot today... like...#  always.";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* Do you like, um... air?";
                message[1] = "* I do... I breathe it all the#  time.";
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
            {
                message[0] = "* ...Uh, I'm very sorry.";
                message[1] = "* I'm just not in a talking mood#  right now.";
                message[2] = "* M-Maybe later...?";
            }
            
            break;
    }
}
