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
                message[0] = "* Oh, hello little one!";
                message[1] = "* Are you a friend of my son's?";
                message[2] = "* He's always making new#  friends, I can't keep up.";
                message[3] = "* In any case, make yourself at#  home!";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I do hope Starlo grows out of#  this state eventually.";
                message[1] = "* He needs to find himself a#  wife and settle down.";
                message[2] = "* If only he won Ceroba's heart#  back then...";
                message[3] = "* I think he was too shy to take#  initiative, poor boy.";
                message[4] = "* When she got engaged to#  Chujin, he didn't set foot#  outside for days.";
                message[5] = "* I eventually had to tell him#  to move on. It was very#  difficult.";
                message[6] = "* Sigh... heartbreak is always#  tragic.";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* I better start thinking about#  dinner...";
                message[1] = "* I wonder if Gilbert and Angie#  are busy?";
                message[2] = "* Hmm... I'm sure they're free.#  After all, there's never a bad#  time for a BBQ!";
            }
            
            break;
    }
}
