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
                message[0] = "* Zzz ... zzz";
                message[1] = "* ... ngh uh... mmm...";
                message[2] = "* ... no I don't know where the...#  pudding...";
                message[3] = "* The pudding... is... zzz";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I-I, I'm up! Yeah -uh- up! ";
                message[1] = "* Is-is there school today?";
                message[2] = "* Am I late? Did I miss it?";
                message[3] = "* What time is it?";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* Aw, I'm never gonna be able to#  fall back to sleep now.";
                message[1] = "* I was having this great dream#  about clementine pudding.";
                message[2] = "* It was delicious and now I'll#  YAWN* never be...";
                message[3] = "* Never... be able to... go back#  to... zzz.";
            }
            
            npc_flag = 0;
            break;
    }
}
