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
                message[0] = "* H-hey kid. Sorry about the#  whole train thing earlier.";
                message[1] = "* I love playing the villain,#  but I never considered how#  the others felt.";
                message[2] = "* Maybe in the end, that's#  what makes me the real#  villain.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I wanna move on once this all#  blows over.";
                message[1] = "* You know, get a honest job and#  move to a more... conventional#  place.";
                message[2] = "* Vengeful Virgil redemption arc,#  here we go!";
            }
            
            break;
    }
}
